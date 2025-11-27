using System;

namespace MySaaSAgent.Domain.Entities
{
    public class EventLog
    {
        public Guid Id { get; set; }
        public Guid? ProjectId { get; set; }
        public Guid? LeadId { get; set; }
        public string EventType { get; set; } = null!;
        public string? Payload { get; set; } // jsonb
        public bool Processed { get; set; } = false;
        public DateTimeOffset CreatedAt { get; set; }
    }
}
