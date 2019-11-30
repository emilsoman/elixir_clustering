defmodule MyApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Cluster.Supervisor, [Application.get_env(:libcluster, :topologies), [name: MyApp.ClusterSupervisor]]},
      # Starts a worker by calling: MyApp.Worker.start_link(arg)
      # {MyApp.Worker, arg}
      {DynamicSupervisor, strategy: :one_for_one, name: MyApp.DynamicSupervisor},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MyApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
