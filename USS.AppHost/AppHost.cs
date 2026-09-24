var builder = DistributedApplication.CreateBuilder(args);

var ussapi = builder.AddProject<Projects.uss_api>("ussapi")
    .WithHttpHealthCheck("/health");

builder.AddProject<Projects.uss_ui>("uss-ui")
    .WithHttpHealthCheck("/health")
    .WithExternalHttpEndpoints()
    .WithReference(ussapi)
    .WaitFor(ussapi);

builder.Build().Run();
