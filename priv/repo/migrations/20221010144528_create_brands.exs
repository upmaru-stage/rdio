defmodule Rdio.Repo.Migrations.CreateBrands do
  use Ecto.Migration

  def change do
    create table(:brands) do
      add :name, :string, null: false

      timestamps(type: :utc_datetime_usec)
    end
  end
end
