
defmodule ElixirGraphql.CityResolverTest do
  use ElixirGraphqlWeb.ConnCase, async: true
  alias ElixirGraphql.{City, AbsintheHelpers}
  import ElixirGraphql.Factory

  describe "City Resolver" do
    test "find/2 returns a city", context do
      city = insert(:city)
      {:ok, city}

      query = """
      {
        city(id: #{city.id}) {
          id
        }
      }
      """

      res = context.conn
        |> post("/api/graphiql", AbsintheHelpers.query_skeleton(query, "cities"))

      assert json_response(res, 200)["data"]["city"]["id"] == to_string(city.id)
    end
  end
end
