defmodule ElixirGraphql.City do
  use Ecto.Schema
  import Ecto.{Query, Changeset}
  alias ElixirGraphql.{Repo, City}

  schema "cities" do
    field :name, :string
    field :state, :string
    field :uf, :string

    timestamps()
  end

  def cities_by_uf_and_name(uf, name) do
    query = from city in City, where: city.uf == ^uf and city.name == ^name
    Repo.all(query)
  end

  def cities_by_name(name) do
    query = from city in City, where: city.name == ^name
    Repo.all(query)
  end

  def cities_by_uf(uf) do
    query = from city in City, where: city.uf == ^uf
    Repo.all(query)
  end

  def list_cities do
    Repo.all(City)
  end

  def find_city(id) do
    Repo.get(City, id)
  end

  @doc false
  def changeset(city, attrs) do
    city
    |> cast(attrs, [:name, :uf, :state])
    |> validate_required([:name, :uf, :state])
  end
end
