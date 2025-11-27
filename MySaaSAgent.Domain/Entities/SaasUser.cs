using System;

namespace MySaaSAgent.Domain.Entities
{
    public class SaasUser
    {
        public Guid Id { get; set; }
        public string Name { get; set; } = null!;
        public string Email { get; set; } = null!;
        public string PasswordHash { get; set; } = null!;
        public string? Phone { get; set; }
        public string Timezone { get; set; } = "UTC";
        public string Status { get; set; } = "active";
        public DateTimeOffset CreatedAt { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
