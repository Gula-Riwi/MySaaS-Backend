using System;

namespace MySaaSAgent.Domain.Entities
{
    public class LeadInteraction
    {
        public Guid Id { get; set; }
        public Guid LeadId { get; set; }
        public string Sender { get; set; } = null!; // lead | bot | human
        public string Channel { get; set; } = null!; // whatsapp | instagram | email | web_form
        public string? Message { get; set; }
        public string? Metadata { get; set; } // jsonb
        public DateTimeOffset Timestamp { get; set; }
    }
}
