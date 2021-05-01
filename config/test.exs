use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :rdio, Rdio.Repo,
  username: System.get_env("POSTGRES_USERNAME") || "zacksiri",
  password: System.get_env("POSTGRES_PASSWORD") || "",
  hostname: System.get_env("POSTGRES_HOST") || "localhost",
  database: "rdio_test",
  queue_target: 50_000,
  queue_interval: 50_000,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rdio, RdioWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
