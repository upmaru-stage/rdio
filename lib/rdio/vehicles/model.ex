defmodule Rdio.Vehicles.Model do
  use Ecto.Schema
  import Ecto.Changeset

  @valid_types ~w(helicopter airplane car)

  alias Rdio.Vehicles.Brand

  schema "models" do
    field :name, :string
    field :type, :string

    belongs_to :brand, Brand

    timestamps(type: :utc_datetime_usec)
  end

  @doc false
  def changeset(model, attrs) do
    model
    |> cast(attrs, [:name, :type])
    |> validate_required([:name, :type])
    |> validate_inclusion(:type, @valid_types)
  end
end
