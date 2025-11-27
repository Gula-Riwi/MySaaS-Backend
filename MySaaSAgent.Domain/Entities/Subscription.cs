using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Subscription
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public string Plan { get; set; } = null!;
        public string Cycle { get; set; } = null!;
        public decimal Price { get; set; } = 0m;
        public string Status { get; set; } = "active";
        public DateTime? RenewalDate { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
    }
}
