defmodule ElixirGraphqlWeb.Schema do
  use Absinthe.Schema
  import_types(ElixirGraphqlWeb.Schema.CityTypes)

  alias ElixirGraphqlWeb.Resolvers

  query do
    @desc "Get all cities"
    field :cities, list_of(:city) do
      arg(:uf, :string)
      arg(:name, :string)
      resolve(&Resolvers.City.list_cities/3)
    end

    @desc "Find a city"
    field :city, type: :city do
      arg(:id, non_null(:id))
      resolve(&Resolvers.City.find_city/3)
    end
  end
end
