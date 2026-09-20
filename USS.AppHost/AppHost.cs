var builder = DistributedApplication.CreateBuilder(args);

builder.AddProject<Projects.uss_api>("uss-api");

builder.Build().Run();
