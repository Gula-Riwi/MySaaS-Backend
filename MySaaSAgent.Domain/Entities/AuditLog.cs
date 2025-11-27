using System;

namespace MySaaSAgent.Domain.Entities
{
    public class AuditLog
    {
        public Guid Id { get; set; }
        public Guid? UserId { get; set; }
        public string Action { get; set; } = null!;
        public string? Details { get; set; } // jsonb
        public string? Ip { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
    }
}
