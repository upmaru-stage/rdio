defmodule Rdio.Repo.Migrations.CreateModels do
  use Ecto.Migration

  def change do
    create table(:models) do
      add :name, :string
      add :type, :citext

      timestamps(type: :utc_datetime_usec)
    end
  end
end
