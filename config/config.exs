use Mix.Config

config :butler,
  name: System.get_env("BUTLER_NAME") || "Butler",
  adapter: Butler.Adapters.Console,
  plugins: [
    {MyBot.Cowsay, []},
    {MyBot.Example, []},
    {MyBot.TestCount, []}
  ]

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).

import_config "#{Mix.env}.exs"
