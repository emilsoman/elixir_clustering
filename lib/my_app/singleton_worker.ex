defmodule SingletonWorker do
  use GenServer

  require Logger

  def start_link([]) do
    GenServer.start_link(__MODULE__, nil)
  end

  def init(state) do
    Logger.info("SingletonWorker running on #{inspect(Node.self())}")
    {:ok, state}
  end
end
