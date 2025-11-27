using System;

namespace MySaaSAgent.Domain.Entities
{
    public class LoginSession
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string TokenHash { get; set; } = null!;
        public string? DeviceInfo { get; set; }
        public string? IpAddress { get; set; }
        public DateTimeOffset? ExpiresAt { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
    }
}
