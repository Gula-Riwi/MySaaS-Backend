using System;

namespace MySaaSAgent.Domain.Entities
{
    public class SystemSetting
    {
        public Guid Id { get; set; }
        public string Key { get; set; } = null!;
        public string? Value { get; set; } // jsonb
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
