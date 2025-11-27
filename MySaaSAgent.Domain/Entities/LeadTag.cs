using System;

namespace MySaaSAgent.Domain.Entities
{
    public class LeadTag
    {
        public Guid Id { get; set; }
        public Guid LeadId { get; set; }
        public Guid TagId { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
    }
}
