defmodule ElixirGraphql.Factory do
  use ExMachina.Ecto, repo: ElixirGraphql.Repo
  use ElixirGraphql.CityFactory
end
