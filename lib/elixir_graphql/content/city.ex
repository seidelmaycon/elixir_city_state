defmodule ElixirGraphql.Content.City do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cities" do
    field :name, :string
    field :state, :string
    field :uf, :string

    timestamps()
  end

  @doc false
  def changeset(city, attrs) do
    city
    |> cast(attrs, [:name, :uf, :state])
    |> validate_required([:name, :uf, :state])
  end
end
