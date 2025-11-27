# MySaaS Agent — Sistema Completo v2.0

## 📌 Concepto Central

**MySaaS Agent es un sistema de inteligencia comercial que automatiza la captación, calificación, agendamiento y seguimiento de clientes para pequeños negocios y emprendedores.**

El usuario NO configura herramientas complicadas. Solo conecta el sistema a sus canales de comunicación y los agentes inteligentes trabajan automáticamente.

---

## 🎯 Problema que Resuelve

Los emprendedores y pequeños negocios pierden 60-80% de sus leads porque:
- Responden tarde (6-24 horas después)
- No tienen sistema de seguimiento organizado
- No pueden pagar un asistente ($800-1500/mes)
- Usan herramientas fragmentadas (Calendly + WhatsApp + Excel)

**MySaaS Agent es como contratar un equipo de ventas virtual que trabaja 24/7.**

---

## 🔄 Flujo Real de Usuario

### Ejemplo 1: Diseñador Freelance

**Contexto:** Vende consultorías de branding.

#### Paso 1: Registro
- Email + contraseña → Accede al dashboard

#### Paso 2: Crear Proyecto
Completa 4 datos básicos:
- Nombre del negocio: "Estudio Creativo Luna"
- Tipo de servicio: "Diseño y Branding"
- Canal de contacto: WhatsApp / Instagram / Formulario web
- Email + logo (opcional)

**El sistema genera automáticamente:**
- ✅ Agente de Captación
- ✅ Agente de Calificación
- ✅ Agente de Agenda
- ✅ Agente de Seguimiento

#### Paso 3: Conexión con Canales
El sistema genera:
- Link para Instagram DM
- Link para WhatsApp Business
- Código embed para landing page

Usuario copia y pega en su bio/página.

#### Paso 4: Automatización en Acción

**Escenario A - Lead Urgente:**
```
Lead: "Hola, necesito un logo para mañana, ¿cuánto cuesta?"

Agente detecta:
├─ Urgencia: Alta (palabra "mañana")
├─ Intención: Alta (menciona precio)
└─ Prioridad: MÁXIMA

Acciones automáticas:
1. Responde en 30 segundos:
   "¡Hola! Claro que sí. Para proyectos urgentes tengo 
   disponibilidad. Te comparto mi calendario para una 
   llamada rápida en las próximas 2 horas."

2. Notifica al dueño por SMS:
   "🔥 Lead urgente: Necesita logo para mañana"

3. Agenda disponible solo para hoy/mañana

4. Crea evento en Google Calendar

5. Envía recordatorio 1 hora antes
```

**Escenario B - Lead Exploratorio:**
```
Lead: "Hola, ¿qué servicios ofreces?"

Agente detecta:
├─ Urgencia: Baja
├─ Intención: Media (explorando opciones)
└─ Prioridad: NORMAL

Acciones automáticas:
1. Responde:
   "¡Hola! Me especializo en branding e identidad visual.
   Te comparto mi portafolio y casos de éxito: [link]
   ¿Te gustaría agendar una consulta gratuita de 15 min?"

2. Si no responde en 3 días:
   → Agente de Recuperación envía: 
   "Hola de nuevo, ¿tuviste chance de ver el portafolio?
   Esta semana tengo un 15% de descuento para nuevos clientes."

3. Si agenda:
   → Pasa a flujo de seguimiento normal
```

#### Paso 5: Post-Reunión
Después de la cita, automáticamente:
- Email de agradecimiento
- Resumen de lo conversado
- Propuesta personalizada
- Cupón de descuento
- Solicitud de feedback

**El diseñador solo tuvo la reunión. Todo lo demás fue automático.**

---

### Ejemplo 2: Clínica Dental

**Contexto:** Dentista con agenda saturada que pierde pacientes porque responde tarde.

#### Setup (5 minutos)
1. Crea proyecto: "Clínica Dental Dr. Pérez"
2. Selecciona: "Servicios de salud"
3. Conecta WhatsApp Business
4. Pega link en Instagram + tarjetas de presentación (QR)

#### En Operación

**Paciente potencial:**
```
Mensaje: "Buen día, necesito limpieza dental"

Agente Captación:
├─ Registra lead: María González
├─ Envía: "¡Hola María! Claro que sí. 
│   ¿Prefieres turno mañana o tarde?"
└─ Usuario responde: "Tarde"

Agente Agenda:
├─ Muestra calendario con slots de tarde
├─ María elige: Martes 4pm
├─ Crea cita en Google Calendar
├─ Envía confirmación por WhatsApp y Email
└─ Programa recordatorios:
    ├─ 24 horas antes
    └─ 1 hora antes

Post-consulta (automático):
├─ Email: "Gracias por tu visita. Aquí van 
│   tus recomendaciones de cuidado dental"
├─ Encuesta de satisfacción
└─ En 6 meses: "Hola María, es momento de 
    tu limpieza semestral. ¿Agendamos?"
```

**Resultado:** 
- 0 citas olvidadas
- 0 llamadas manuales
- 40% más pacientes atendidos
- Recompra automática

---

## 🧠 Arquitectura del Sistema

### Nivel 1: Capa de Inteligencia (Cerebro)

Motor de decisiones que analiza cada lead:

```
Lead ingresa → Análisis automático:

1. Detección de Intención
   ├─ Palabras clave: "precio", "cuánto", "contratar"
   ├─ Tono: urgente vs exploratorio
   └─ Score: 0-100% probabilidad de compra

2. Nivel de Urgencia
   ├─ "Hoy", "urgente", "rápido" = ALTA
   ├─ "Semana", "mes" = MEDIA
   └─ "Información", "cuéntame" = BAJA

3. Calificación Automática
   ├─ ¿Tiene presupuesto? (menciona precio)
   ├─ ¿Tiene timeline? (menciona fechas)
   ├─ ¿Fit con servicio? (coincide con oferta)
   └─ Score de calidad: A, B, C, D

4. Ruta de Acción
   └─ Asigna agente específico + secuencia
```

**Esto NO es un chatbot simple. Es IA que toma decisiones.**

---

### Nivel 2: Orquestador de Agentes (Coordinador)

Sistema maestro que decide qué agente actúa en cada momento:

```
FLUJO MULTI-AGENTE:

Lead nuevo
    ↓
Agente Captación (responde)
    ↓
Agente Calificación (analiza)
    ├─ Si califica → Agente Ventas
    └─ Si no → Agente Educación
         ↓
    Agente Agenda (coordina cita)
         ↓
    Agente Recordatorios (evita no-shows)
         ↓
    POST-REUNIÓN:
    ├─ Compró → Agente Onboarding
    └─ No compró → Agente Nurturing
         ↓
    Agente Recuperación (si se enfría)
         ↓
    Agente Reactivación (60 días después)
```

**Handoff inteligente:** 
- Agentes comparten contexto
- No repiten preguntas
- Mantienen coherencia conversacional

---

### Nivel 3: Agentes Especializados (Trabajadores)

#### 🎯 Agente de Captación
**Función:** Primer contacto y registro

**Hace:**
- Responde en 30 segundos máximo
- Saluda con el nombre del negocio
- Identifica el servicio solicitado
- Registra datos del lead
- Pasa a siguiente agente

**Aprende:**
- Tono que funciona mejor
- Mejores horarios de respuesta
- Preguntas más comunes

---

#### 🔍 Agente de Calificación
**Función:** Evaluar si el lead es viable

**Criterios de calificación:**
- Presupuesto aproximado
- Timeline de decisión
- Problema específico a resolver
- Autoridad de decisión (¿es el que decide?)

**Salida:**
```
Lead: Carla Méndez
├─ Score: 85/100 (ALTA calidad)
├─ Presupuesto: $500-1000
├─ Urgencia: 7 días
├─ Problema: Necesita branding para nuevo negocio
└─ Acción: Priorizar + notificar dueño
```

---

#### 📅 Agente de Agenda
**Función:** Coordinar reuniones sin fricción

**Integraciones:**
- Google Calendar (lee disponibilidad real)
- Zoom (crea meetings automáticos)
- WhatsApp/Email (confirmaciones)
- SMS (recordatorios)

**Inteligencia:**
- Detecta zona horaria del lead
- Ofrece solo horarios disponibles
- Evita doble-reserva
- Reagenda automáticamente si cancelan

**Recordatorios:**
- 24 horas antes: Email + WhatsApp
- 1 hora antes: SMS
- 5 minutos antes: Notificación push

---

#### 💬 Agente de Seguimiento
**Función:** Mantener la relación post-reunión

**Automático después de cada cita:**
1. Email de agradecimiento (5 min después)
2. Resumen de puntos clave (1 hora después)
3. Propuesta/cotización (si aplica)
4. Solicitud de feedback (24 horas después)
5. Oferta de valor (si no compró - 3 días después)

**Si compró:**
- Onboarding step-by-step
- Check-in de satisfacción
- Solicitud de testimonial
- Cross-sell en momento óptimo

**Si no compró:**
- Secuencia educativa (casos de éxito, tips)
- Contacto suave cada 2 semanas
- Oferta especial en 30 días

---

#### 🔄 Agente de Recuperación
**Función:** Reactivar leads fríos

**Triggers:**
- Lead no respondió en 3 días
- Lead vio propuesta pero no decidió
- Lead agendó pero no asistió

**Estrategias:**
```
Secuencia de recuperación:

Día 3: "Hola [nombre], ¿tuviste chance de revisar 
       la propuesta? ¿Alguna duda?"

Día 7: "Te comparto un caso de éxito similar al tuyo: [link]"

Día 14: "Esta semana tengo una oferta especial: 15% off"

Día 30: "¿Sigue siendo prioritario [proyecto]? 
        Mi disponibilidad cambió y ahora puedo 
        tomar tu proyecto antes."
```

**Sabe cuándo detenerse:** Si lead pide no contactar o 3 rechazos, se detiene.

---

#### 💰 Agente de Ventas (Avanzado)
**Función:** Manejar objeciones y cerrar

**Habilidades:**
- Detecta objeciones comunes:
  - "Muy caro" → Ofrece plan de pagos
  - "Necesito pensarlo" → Agenda follow-up
  - "No estoy seguro" → Envía casos de estudio
  
**No reemplaza al humano en cierre complejo, pero prepara el terreno.**

---

#### 📊 Agente de Cross-sell (Avanzado)
**Función:** Vender servicios complementarios a clientes existentes

**Ejemplo:**
```
Cliente compró: Logo

30 días después:
"Hola [nombre], ¿qué tal va con el nuevo logo?
Muchos clientes después del logo necesitan tarjetas 
de presentación. ¿Te interesa un paquete especial?"
```

**Inteligencia:**
- Analiza patrones de compra
- Timing óptimo para ofertar
- Personaliza bundle

---

### Nivel 4: Capa de Integración

Conecta con herramientas reales del usuario:

```
Canales de Comunicación:
├─ WhatsApp Business API
├─ Instagram DM
├─ Facebook Messenger
├─ Email (SMTP/Gmail)
├─ SMS (Twilio)
└─ Formulario web (embed)

Calendarios:
├─ Google Calendar
├─ Outlook Calendar
└─ Apple Calendar

Videoconferencias:
├─ Zoom
├─ Google Meet
└─ Microsoft Teams

CRM & Pagos:
├─ HubSpot
├─ Salesforce
├─ Stripe
└─ PayPal

Datos externos:
├─ Website del negocio (scraping de servicios)
├─ Instagram (contenido y estilo)
└─ Google My Business (reseñas)
```

---

## 🧪 Sistema de Memoria Contextual

Cada lead tiene un perfil persistente:

```json
{
  "lead_id": "L-45821",
  "nombre": "María González",
  "email": "maria@email.com",
  "telefono": "+52-XXX",
  
  "historial_contactos": [
    {
      "fecha": "2024-01-15",
      "canal": "WhatsApp",
      "tema": "Consulta sobre branding",
      "resultado": "Agendó cita"
    },
    {
      "fecha": "2024-01-18",
      "canal": "Zoom",
      "tema": "Reunión inicial",
      "resultado": "Pidió propuesta"
    }
  ],
  
  "intereses": ["Branding", "Diseño web"],
  "presupuesto": "$1000-1500",
  "objeciones": ["Precio elevado", "Timeline"],
  "etapa": "Propuesta enviada",
  "probabilidad_cierre": "70%",
  
  "proxima_accion": {
    "tipo": "Seguimiento",
    "fecha": "2024-01-22",
    "mensaje": "Recordar sobre propuesta + oferta"
  }
}
```

**Cuando María regresa al sistema:**
- Agente recuerda todo
- No pregunta lo mismo
- Continúa conversación natural
- Ajusta oferta según historial

---

## 🎓 Motor de Aprendizaje por Proyecto

El sistema aprende de cada interacción:

```
Análisis por proyecto:

Después de 50 interacciones:
├─ ¿Qué preguntas hacen más los leads?
│   → Crea respuestas pre-programadas
│
├─ ¿Qué mensajes tienen mejor tasa de respuesta?
│   → Prioriza ese estilo
│
├─ ¿Qué objeciones aparecen más?
│   → Prepara mejores argumentos
│
├─ ¿Qué horarios convierten más?
│   → Sugiere esos slots primero
│
└─ ¿Qué tipo de lead cierra más?
    → Enfoca esfuerzo en ese perfil
```

**Resultado:** Cada proyecto tiene agentes entrenados específicamente para ESE negocio.

---

## 🚨 Sistema de Escalamiento Inteligente

Situaciones donde el humano debe intervenir:

```
TRIGGER: Lead caliente detectado

Acciones simultáneas:
1. SMS al dueño: 
   "🔥 Lead urgente: Ana López - 
   Presupuesto alto - Necesita respuesta YA"

2. Notificación push en dashboard

3. Email detallado con contexto completo

4. Agente MANTIENE conversación mientras espera:
   "Perfecto, estoy verificando disponibilidad 
   con mi equipo. Te confirmo en 5 minutos."

5. Si dueño no responde en 10 min:
   Agente agenda automáticamente y notifica después
```

**El agente compra tiempo. El humano cierra.**

---

## 🎛️ Dashboard del Usuario

### Vista Principal

```
┌─────────────────────────────────────────┐
│  🚀 Proyecto: Estudio Creativo Luna     │
│  📊 Estado: Activo - 3 agentes corriendo│
└─────────────────────────────────────────┘

📈 Métricas Hoy:
├─ 🔥 Leads nuevos: 7
├─ 📅 Citas agendadas: 3
├─ 💬 Conversaciones activas: 12
├─ ✅ Conversión: 28% (↑ 5% vs semana pasada)
└─ ⏱️ Tiempo de respuesta promedio: 24 segundos

🎯 Leads Prioritarios:
┌──────────────────────────────────────┐
│ 🔴 Ana López - Urgente              │
│    Presupuesto: $2,000              │
│    Mensaje: "Necesito logo esta sem"│
│    [RESPONDER AHORA] [VER HISTORIAL]│
├──────────────────────────────────────┤
│ 🟡 Carlos Ruiz - Calificado         │
│    Presupuesto: $800                │
│    Agenda: Pendiente                │
│    [ENVIAR MENSAJE] [AGENDAR]       │
└──────────────────────────────────────┘

📅 Próximas Reuniones:
├─ Hoy 4pm: María G. - Consulta branding
├─ Mañana 10am: Pedro S. - Diseño web
└─ Mañana 3pm: Laura M. - Logo + tarjetas
```

### Vista de Conversaciones (Tipo CRM)

```
Lead: María González
┌─────────────────────────────────────────┐
│ 📊 Score: 85/100 (Alta calidad)        │
│ 🎯 Etapa: Propuesta enviada            │
│ 💰 Valor potencial: $1,200             │
│ 📅 Última interacción: Hace 2 horas    │
└─────────────────────────────────────────┘

Historial de conversación:
├─ [Bot] Hola María, gracias por contactar...
├─ [María] Hola, necesito ayuda con branding
├─ [Bot] Perfecto, ¿para qué tipo de negocio?
├─ [María] Es una cafetería nueva
├─ [Bot] Excelente. Te comparto mi calendario...
└─ [María] Perfecto, agendé para mañana

Acciones disponibles:
[✍️ TOMAR CONTROL] → Responder manualmente
[📝 EDITAR RESPUESTA] → Corregir lo que dijo el bot
[🤖 DEJAR AL BOT] → Continuar automático
[📁 VER ARCHIVOS] → Portafolio enviado
```

### Control Manual

Usuario puede:
1. **Ver conversación en tiempo real**
2. **Tomar control cuando quiera:**
   - Click en "Tomar control"
   - Bot se pausa
   - Usuario escribe directamente
   - Click en "Devolver a bot"
3. **Entrenar al bot:**
   - Corrige respuestas incorrectas
   - Sistema aprende y ajusta
4. **Aprobar mensajes importantes:**
   - Bot pide aprobación para propuestas
   - Usuario revisa y autoriza envío

---

## 🔧 Sistema de Configuración Inteligente

### Onboarding Asistido (10 preguntas)

En lugar de formularios complejos:

```
Agente del sistema conversa con el usuario:

Bot: "¡Hola! Voy a hacerte 10 preguntas para configurar 
     tus agentes. ¿Listo?"

Usuario: "Sí"

Bot: "1/10 - ¿Qué servicio ofreces en una frase?"
Usuario: "Diseño de logos para emprendedores"

Bot: "2/10 - ¿Cuánto cobras aproximadamente?"
Usuario: "$500 a $2000 según complejidad"

Bot: "3/10 - ¿Cuánto dura una consulta típica?"
Usuario: "30 minutos"

Bot: "4/10 - ¿Qué días/horarios trabajas?"
Usuario: "Lunes a viernes, 9am a 6pm"

[... 6 preguntas más ...]

Bot: "✅ Listo! Generé tus agentes.
     Ahora simularé 3 conversaciones 
     para que veas cómo responderán.
     ¿Quieres revisarlas antes de activar?"
```

---

### Simulador Pre-Lanzamiento

Antes de activar, el sistema genera conversaciones de prueba:

```
SIMULACIÓN 1: Lead exploratorio
├─ Lead: "Hola, qué servicios ofreces?"
└─ Bot: "¡Hola! Me especializo en diseño de logos 
        para emprendedores. Trabajo con startups y 
        pequeños negocios que buscan identidad 
        profesional. ¿Tienes un proyecto en mente?"

SIMULACIÓN 2: Lead con presupuesto
├─ Lead: "Cuánto cuesta un logo?"
└─ Bot: "El rango va de $500 a $2000 según 
        complejidad. ¿Te gustaría una consulta 
        gratuita de 30 min para revisar tu proyecto 
        y darte un precio exacto?"

SIMULACIÓN 3: Lead urgente
├─ Lead: "Necesito un logo para la próxima semana"
└─ Bot: "¡Perfecto! Sí puedo ayudarte. Te comparto 
        mi calendario para una llamada hoy o mañana 
        y empezamos de inmediato. ¿Qué horario te va?"

[APROBAR] [EDITAR RESPUESTAS] [SIMULAR MÁS]
```

Usuario ajusta hasta que se sienta cómodo.

---

## 🧩 Arquitectura Modular de Agentes

No todos los negocios necesitan lo mismo.

```
BIBLIOTECA DE AGENTES:

📦 Plan FREE:
├─ ✅ Agente Captación (básico)
├─ ✅ Agente Agenda (básico)
└─ ✅ Agente Seguimiento (1 email)

📦 Plan PRO ($29/mes):
├─ ✅ Todo lo de Free
├─ ✅ Agente Calificación (avanzado)
├─ ✅ Agente Recuperación (secuencias)
├─ ✅ Agente Recordatorios (multi-canal)
└─ ✅ Agente Ventas (manejo de objeciones)

📦 Plan BUSINESS ($99/mes):
├─ ✅ Todo lo de Pro
├─ ✅ Agente Cross-sell (post-venta)
├─ ✅ Agente Reactivación (clientes antiguos)
├─ ✅ Agente Remarketing (campaigns)
├─ ✅ Agente de Reseñas (solicita testimonios)
└─ ✅ Agentes personalizados (puedes crear propios)
```

**Plug & Play:** Usuario activa solo los que necesita.

---

## 🛡️ Sistema Anti-Spam y Validación

Filtrado inteligente antes de notificar al dueño:

```
Lead llega → Validación automática:

1. ¿Email válido?
   ├─ Verificación de sintaxis
   ├─ Verificación de dominio
   └─ Detección de emails temporales

2. ¿Teléfono válido?
   ├─ Formato correcto
   └─ No está en lista de spam

3. ¿Es bot o humano?
   ├─ Análisis de velocidad de escritura
   ├─ Patrón de respuestas
   └─ Detección de spam keywords

4. ¿Ya existe en sistema?
   ├─ Sí → Cargar historial
   └─ No → Crear nuevo registro

5. ¿Coincide con perfil objetivo?
   ├─ Industria correcta
   ├─ Ubicación geográfica
   └─ Tipo de servicio

Resultado:
├─ ✅ VÁLIDO → Procesar normalmente
├─ ⚠️ SOSPECHOSO → Validación manual
└─ ❌ SPAM → Bloquear silenciosamente
```

**Ahorra tiempo filtrando ruido.**

---

## 📊 Analytics Predictivo

Dashboard muestra no solo datos, sino insights:

```
PANEL DE INTELIGENCIA:

📈 Tendencias:
├─ "Tus leads aumentaron 40% este mes"
├─ "Los martes a las 3pm tienes más conversiones"
└─ "Leads que responden en <1 hora cierran 3x más"

🎯 Recomendaciones:
├─ "El 60% de tus leads pregunta por precios.
│   Sugerencia: Agrega pricing público para pre-calificar"
│
├─ "3 leads de esta semana mencionaron 'urgente'
│   pero respondiste en 2+ horas. 
│   Activa notificaciones push?"
│
└─ "Leads de Instagram convierten 2x mejor que de web.
    Invierte más ahí."

🔮 Predicciones:
├─ Lead: Ana López
│   Probabilidad de cierre: 85%
│   Razón: Presupuesto alto + urgente + ya agendó
│
└─ Lead: Carlos Ruiz
    Probabilidad de cierre: 30%
    Razón: Solo preguntó precio + no respondió seguimiento
```

**IA que aconseja, no solo reporta.**

---

## 🔐 Sistema de Permisos y Privacidad

Control granular:

```
CONFIGURACIÓN DE AGENTES:

¿Qué puede hacer el agente sin aprobación?
├─ ✅ Responder preguntas frecuentes
├─ ✅ Enviar portafolio y casos de estudio
├─ ✅ Agendar citas en horarios disponibles
├─ ✅ Enviar recordatorios de citas
├─ ⚠️ Negociar precio (REQUIERE APROBACIÓN)
├─ ⚠️ Ofrecer descuentos (REQUIERE APROBACIÓN)
└─ ❌ Cerrar venta sin intervención humana (DESACTIVADO)

Modo de Operación:
○ Totalmente automático
● Semi-automático (apruebo mensajes importantes)
○ Solo sugerencias (yo respondo, bot recomienda)
```

**Usuario siempre tiene control final.**

---

## 💡 Casos de Uso Expandidos

### Template por Industria

```
🎨 FREELANCERS:
├─ Diseñadores
├─ Desarrolladores web
├─ Copywriters
├─ Fotógrafos
└─ Consultores

📚 EDUCACIÓN:
├─ Coaches
├─ Mentores
├─ Tutores
└─ Cursos online

💪 FITNESS & WELLNESS:
├─ Entrenadores personales
├─ Nutriólogos
├─ Instructores de yoga
└─ Masajistas

🏠 SERVICIOS LOCALES:
├─ Salones de belleza
├─ Talleres mecánicos
├─ Electricistas
├─ Plomeros
└─ Jardineros

🏥 SALUD:
├─ Dentistas
├─ Fisioterapeutas
├─ Psicólogos
└─ Veterinarios

🏢 REAL ESTATE:
├─ Agentes inmobiliarios
├─ Property managers
└─ Asesores de inversión

🍕 RESTAURANTES:
├─ Reservas
├─ Delivery
└─ Catering
```

Cada industria tiene:
- Mensajes pre-escritos
- Preguntas de calificación específicas
- Secuencias de seguimiento adaptadas

---

## 🚀 Arquitectura Técnica Completa

```
┌─────────────────────────────────────────────────────┐
│              CAPA DE DECISIÓN (IA)                  │
│  ┌──────────────────────────────────────────────┐  │
│  │ • Motor de NLP (análisis de intención)       │  │
│  │ • Clasificador de urgencia                   │  │
│  │ • Sistema de scoring de leads                │  │
│  │ • Predictor de conversión                    │  │
│  │ • Detector de sentimiento                    │  │
│  └──────────────────────────────────────────────┘  │
└─────────────────────┬───────────────────────────────┘
                      │
┌─────────────────────┴───────────────────────────────┐
│         ORQUESTADOR DE AGENTES (Coordinador)        │
│  ┌──────────────────────────────────────────────┐  │
│  │ • Gestión de estado conversacional           │  │
│  │ • Router de agentes (quién actúa cuándo)     │  │
│  │ • Sistema de handoff humano-bot              │  │
│  │ • Cola de prioridades                        │  │
│  │ • Gestor de contexto compartido              │  │
│  └──────────────────────────────────────────────┘