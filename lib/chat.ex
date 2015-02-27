defmodule Mix.Tasks.Chat do
  use Mix.Task
  import ElixirChat.CLI

  @moduledoc """
    Main entry point for starting the chat system. Simply run `mix chat` to start up
    the application!
  """

  @doc """
    Entry point for the `mix chat` command.
  """
  def run(_) do
    ElixirChat.start :normal, []
    name = IO.gets("Please enter your name: ") |> String.strip
    :net_kernel.stop()
    :net_kernel.start([name |> String.downcase |> String.to_atom, :shortnames])
    Node.set_cookie(:chat)
    IO.puts "All commands start with a \"/\". To get the list of commands, type \"/?\" or \"/help\""
    command(name)
  end

end
