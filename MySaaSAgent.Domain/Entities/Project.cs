using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Project
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string Name { get; set; } = null!;
        public string? Industry { get; set; }
        public string? Description { get; set; }
        public string? WorkingHours { get; set; } // jsonb
        public string? Config { get; set; } // jsonb
        public string Status { get; set; } = "active";
        public DateTimeOffset CreatedAt { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
