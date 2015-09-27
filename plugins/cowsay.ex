defmodule MyBot.Cowsay do
  use Butler.Plugin

  def respond("cowsay " <> say, state) do
    # {response, 0} = System.cmd("cowsay", [say])
    # resp_string = "#{response}"

    # {:reply, {:code, resp_string}, state}
    {:reply, {:code, "Test all the things"}, state}
  end
end
