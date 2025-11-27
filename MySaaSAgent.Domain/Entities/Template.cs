using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Template
    {
        public Guid Id { get; set; }
        public Guid? ProjectId { get; set; }
        public string? Industry { get; set; }
        public string Type { get; set; } = null!;
        public string Content { get; set; } = null!;
        public string? Variables { get; set; } // jsonb
        public DateTimeOffset CreatedAt { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
