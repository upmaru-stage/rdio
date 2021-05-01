import Config

config :rdio, Rdio.Repo, url: System.fetch_env!("DATABASE_URL")

config :rdio, RdioWeb.Endpoint,
  http: [
    port: String.to_integer(System.get_env("PORT") || "4000"),
    transport_options: [socket_opts: [:inet6]]
  ],
  secret_key_base: System.fetch_env!("SECRET_KEY_BASE")
