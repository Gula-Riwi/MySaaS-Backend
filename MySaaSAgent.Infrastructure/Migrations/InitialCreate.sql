-- InitialCreate: Raw SQL migration generated according to the DDL provided

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1) SaaS Users (dueños de cuentas)
CREATE TABLE saas_users (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  name text NOT NULL,
  email text NOT NULL UNIQUE,
  password_hash text NOT NULL,
  phone text,
  timezone text DEFAULT 'UTC',
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

-- 2) Subscriptions del SaaS
CREATE TABLE subscriptions (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id uuid NOT NULL REFERENCES saas_users(id) ON DELETE CASCADE,
  plan text NOT NULL,
  cycle text NOT NULL,
  price numeric(10,2) NOT NULL DEFAULT 0.00,
  status text NOT NULL DEFAULT 'active',
  renewal_date date,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_subscriptions_user ON subscriptions(user_id);

-- 3) Projects (negocios de cada cliente)
CREATE TABLE projects (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id uuid NOT NULL REFERENCES saas_users(id) ON DELETE CASCADE,
  name text NOT NULL,
  industry text,
  description text,
  working_hours jsonb,
  config jsonb,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_projects_user ON projects(user_id);

-- 4) Channels (WhatsApp, IG, Email, etc.)
CREATE TABLE channels (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  type text NOT NULL,
  credentials jsonb,
  verified boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_channels_project ON channels(project_id);

-- 5) Leads de cada negocio
CREATE TABLE leads (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  name text,
  email text,
  phone text,
  source text,
  stage text NOT NULL DEFAULT 'new',
  score int DEFAULT 0,
  urgency text DEFAULT 'low',
  last_interaction_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_leads_project ON leads(project_id);
CREATE INDEX idx_leads_phone ON leads(phone);

-- 6) Lead Interactions (historial de mensajes)
CREATE TABLE lead_interactions (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  lead_id uuid NOT NULL REFERENCES leads(id) ON DELETE CASCADE,
  sender text NOT NULL,
  channel text NOT NULL,
  message text,
  metadata jsonb,
  timestamp timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_li_lead ON lead_interactions(lead_id);

-- 7) Appointments (citas generadas)
CREATE TABLE appointments (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  lead_id uuid REFERENCES leads(id) ON DELETE SET NULL,
  start_time timestamptz NOT NULL,
  end_time timestamptz,
  meeting_link text,
  status text NOT NULL DEFAULT 'pending',
  notes text,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_appointments_project ON appointments(project_id);

-- 8) Webhooks (eventos salientes)
CREATE TABLE webhooks (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  event text NOT NULL,
  target_url text NOT NULL,
  active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_webhooks_project ON webhooks(project_id);

-- 9) EventLog (eventos para n8n/cola)
CREATE TABLE event_log (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid,
  lead_id uuid,
  event_type text NOT NULL,
  payload jsonb,
  processed boolean NOT NULL DEFAULT false,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_eventlog_processed ON event_log(processed);

-- 10) Templates (plantillas de mensajes)
CREATE TABLE templates (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid,
  industry text,
  type text NOT NULL,
  content text NOT NULL,
  variables jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_templates_project ON templates(project_id);

-- 11) Tags del negocio
CREATE TABLE tags (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  project_id uuid NOT NULL REFERENCES projects(id) ON DELETE CASCADE,
  tag_name text NOT NULL,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE UNIQUE INDEX ux_tags_project_tag ON tags(project_id, tag_name);

-- 12) Relación N-N entre Leads y Tags
CREATE TABLE lead_tags (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  lead_id uuid NOT NULL REFERENCES leads(id) ON DELETE CASCADE,
  tag_id uuid NOT NULL REFERENCES tags(id) ON DELETE CASCADE,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_leadtags_lead ON lead_tags(lead_id);

-- 13) AuditLogs (auditoría)
CREATE TABLE audit_logs (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id uuid REFERENCES saas_users(id),
  action text NOT NULL,
  details jsonb,
  ip text,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_auditlogs_user ON audit_logs(user_id);

-- 14) LoginSessions (tokens activos)
CREATE TABLE login_sessions (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id uuid NOT NULL REFERENCES saas_users(id) ON DELETE CASCADE,
  token_hash text NOT NULL,
  device_info text,
  ip_address text,
  expires_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX idx_sessions_user ON login_sessions(user_id);

-- 15) SystemSettings (config global del SaaS)
CREATE TABLE system_settings (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  key text UNIQUE NOT NULL,
  value jsonb,
  updated_at timestamptz NOT NULL DEFAULT now()
);
