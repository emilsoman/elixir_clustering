# How to use swarm + libcluster

Relevant lines of code:

1. swarm and libcluster added in mix.exs
2. A new dynamic supervisor created at `lib/my_app/dynamic_supervisor.ex`
3. `{DynamicSupervisor, strategy: :one_for_one, name: MyApp.DynamicSupervisor}` added to lib/my_app/application.ex.
4. Example GenServer created at `lib/my_app/singleton_worker.ex` to demonstrate singleton behaviour in cluster.
