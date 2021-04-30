defmodule Rdio.Repo do
  use Ecto.Repo,
    otp_app: :rdio,
    adapter: Ecto.Adapters.Postgres
end
