defmodule ElixirGraphql.Repo do
  use Ecto.Repo,
    otp_app: :elixir_graphql,
    adapter: Ecto.Adapters.Postgres
end
