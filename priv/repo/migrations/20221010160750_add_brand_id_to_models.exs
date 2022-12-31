defmodule Rdio.Repo.Migrations.AddBrandIdToModels do
  use Ecto.Migration

  def change do
    alter table(:models) do
      add :brand_id, references(:brands, on_delete: :nothing), null: false
    end

    create index(:models, [:brand_id])
  end
end
