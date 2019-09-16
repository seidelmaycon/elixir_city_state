defmodule ElixirGraphql.Content do
  import Ecto.Query

  alias ElixirGraphql.{Repo, Content}

  def cities_by_uf_and_name(uf, name) do
    query = from city in Content.City, where: city.uf == ^uf and city.name == ^name
    Repo.all(query)
  end

  def cities_by_name(name) do
    query = from city in Content.City, where: city.name == ^name
    Repo.all(query)
  end

  def cities_by_uf(uf) do
    query = from city in Content.City, where: city.uf == ^uf
    Repo.all(query)
  end

  def list_cities do
    Repo.all(Content.City)
  end

  def find_city(id) do
    Repo.get(Content.City, id)
  end
end
