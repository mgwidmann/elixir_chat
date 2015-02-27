defmodule ElixirChat.Constants do

  def help, do: """
      List of all commands:
        /help                        -  Displays this list
        /help <comamnd>              -  Displays more helpful information about that command
        /join <node1> <node2> ...    -  Join an existing chat node network
        /list                        -  List the names of all users
  """

  def join, do: """
      Specify the node name of another user on your network
      in the form of "name@iporhost.com". For example, if starting
      two chats on the same computer in different terminals,
      simply type the following:

      /join foo@127.0.0.1

      You can join multiple nodes by separating them by spaces like:

      /join foo@127.0.0.1 bar@127.0.0.1 baz@127.0.0.1

      Names of users (prefixing the @ sign) will always be lowercase!
  """

  def do_not_understand, do: "I'm afraid I don't understand that command... Heres some help!"

end
