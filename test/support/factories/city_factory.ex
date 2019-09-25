defmodule ElixirGraphql.CityFactory do
  defmacro __using__(_opts) do
    quote do
      def city_factory do
        %ElixirGraphql.City{
          name: "Porto Alegre",
          state: "Rio Grande do Sul",
          uf: "RS",
        }
      end
    end
  end
end
