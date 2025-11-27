using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Channel
    {
        public Guid Id { get; set; }
        public Guid ProjectId { get; set; }
        public string Type { get; set; } = null!;
        public string? Credentials { get; set; } // jsonb
        public bool Verified { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
