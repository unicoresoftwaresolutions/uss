var builder = DistributedApplication.CreateBuilder(args);

builder.AddProject<Projects.uss_api>("uss-api");

builder.AddProject<Projects.uss_ui>("uss-ui");

builder.Build().Run();
