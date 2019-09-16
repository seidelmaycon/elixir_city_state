defmodule ElixirGraphql.Application do
  use Application

  def start(_type, _args) do
    children = [
      ElixirGraphql.Repo,
      ElixirGraphqlWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: ElixirGraphql.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    ElixirGraphqlWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
