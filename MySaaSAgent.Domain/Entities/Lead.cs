using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Lead
    {
        public Guid Id { get; set; }
        public Guid ProjectId { get; set; }
        public string? Name { get; set; }
        public string? Email { get; set; }
        public string? Phone { get; set; }
        public string? Source { get; set; }
        public string Stage { get; set; } = "new";
        public int Score { get; set; }
        public string Urgency { get; set; } = "low";
        public DateTimeOffset? LastInteractionAt { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
