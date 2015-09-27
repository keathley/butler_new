defmodule MyBot.Example do
  use Butler.Plugin

  def respond("example me", state) do
    {:reply, "This is an example response", state}
  end
end

