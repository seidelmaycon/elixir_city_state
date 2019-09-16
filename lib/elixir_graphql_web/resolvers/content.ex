defmodule ElixirGraphqlWeb.Resolvers.Content do
  def list_cities(_parent, %{uf: uf, name: name}, _resolution) do
    {:ok, ElixirGraphql.Content.cities_by_uf_and_name(uf, name)}
  end

  def list_cities(_parent, %{uf: uf}, _resolution) do
    {:ok, ElixirGraphql.Content.cities_by_uf(uf)}
  end

  def list_cities(_parent, %{name: name}, _resolution) do
    {:ok, ElixirGraphql.Content.cities_by_name(name)}
  end

  def list_cities(_parent, _args, _resolution) do
    {:ok, ElixirGraphql.Content.list_cities()}
  end

  def find_city(_parent, %{id: id}, _resolution) do
    case ElixirGraphql.Content.find_city(id) do
      nil ->
        {:error, "City ID #{id} not found"}

      city ->
        {:ok, city}
    end
  end
end
