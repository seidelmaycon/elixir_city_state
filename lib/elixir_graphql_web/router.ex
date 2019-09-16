defmodule ElixirGraphqlWeb.Router do
  use ElixirGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: ElixirGraphqlWeb.Schema

    forward "/", Absinthe.Plug, schema: ElixirGraphqlWeb.Schema
  end
end
