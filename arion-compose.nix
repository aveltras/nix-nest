{
  services.postgres = {
    service = {
      image = "postgres:13-alpine";
      volumes = [ "${toString ./.}/.state/postgres-data:/var/lib/postgresql/data" ];
      environment.POSTGRES_PASSWORD = "dev";
      ports = [
        "5432:5432"
      ];
    };
  };

  services.redis = {
    service = {
      image = "redis:6.0-alpine";
      volumes = [ "${toString ./.}/.state/redis:/data" ];
      ports = [
        "6379:6379"
      ];
    };
  };
}
