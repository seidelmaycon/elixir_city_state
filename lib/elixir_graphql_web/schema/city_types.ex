defmodule ElixirGraphqlWeb.Schema.CityTypes do
  use Absinthe.Schema.Notation

  object :city do
    field :id, :id
    field :name, :string
    field :uf, :string
    field :state, :string
  end
end
