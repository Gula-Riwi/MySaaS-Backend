using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Webhook
    {
        public Guid Id { get; set; }
        public Guid ProjectId { get; set; }
        public string Event { get; set; } = null!;
        public string TargetUrl { get; set; } = null!;
        public bool Active { get; set; } = true;
        public DateTimeOffset CreatedAt { get; set; }
    }
}
