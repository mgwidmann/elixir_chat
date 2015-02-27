defmodule ElixirChat.Chat do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: :chat)
  end

  @doc """
    Sends a message to all players connected.
  """
  def broadcast(msg, user) do
    GenServer.multi_call(Node.list, :chat, {:message, user, msg})
  end

  def handle_call({:message, name, msg}, _from, state) do
    IO.puts "#{name}: #{msg}"
    {:reply, nil, state}
  end

end
