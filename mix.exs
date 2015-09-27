defmodule ButlerNew.Mixfile do
  use Mix.Project

  def project do
    [app: :butler_new,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      env: [plugins: plugins],
      applications: [:logger, :butler]
    ]
  end
      # mod: {Butler, [plugins]}

  def plugins do
    [
      {MyBot.Cowsay, []},
      {MyBot.TestCount, []}
    ]
  end

  def elixirc_paths(:test), do: ["lib", "plugins", "test/support"]
  def elixirc_paths(_), do: ["lib", "plugins"]

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:butler, "~> 0.2.0"}]
  end
end
