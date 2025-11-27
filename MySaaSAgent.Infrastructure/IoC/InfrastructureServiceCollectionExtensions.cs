using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;
using MySaaSAgent.Infrastructure.Data;

namespace MySaaSAgent.Infrastructure.IoC
{
    public static class InfrastructureServiceCollectionExtensions
    {
        public static IServiceCollection AddInfrastructureDatabase(this IServiceCollection services, IConfiguration configuration)
        {
            var conn = configuration.GetConnectionString("DefaultConnection") ?? throw new ArgumentException("DefaultConnection missing");
            services.AddDbContext<MySaaSAgentPgDbContext>(o => o.UseNpgsql(conn));
            return services;
        }
    }
}
