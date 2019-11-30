defmodule MyApp.DynamicSupervisor do
  def register(child_spec) do
    {:ok, _pid} = DynamicSupervisor.start_child(__MODULE__, child_spec)
  end
end
