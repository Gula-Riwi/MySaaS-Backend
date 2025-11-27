using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Tag
    {
        public Guid Id { get; set; }
        public Guid ProjectId { get; set; }
        public string TagName { get; set; } = null!;
        public DateTimeOffset CreatedAt { get; set; }
    }
}
