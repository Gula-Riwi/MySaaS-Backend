using System;

namespace MySaaSAgent.Domain.Entities
{
    public class Appointment
    {
        public Guid Id { get; set; }
        public Guid ProjectId { get; set; }
        public Guid? LeadId { get; set; }
        public DateTimeOffset StartTime { get; set; }
        public DateTimeOffset? EndTime { get; set; }
        public string? MeetingLink { get; set; }
        public string Status { get; set; } = "pending";
        public string? Notes { get; set; }
        public DateTimeOffset CreatedAt { get; set; }
        public DateTimeOffset UpdatedAt { get; set; }
    }
}
