defmodule TutorialToml.MixProject do
  use Mix.Project

  def project do
    [
      app: :tutorial_toml,
      version: "1.0.0",
      elixir: "~> 1.8",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      name: "Excluster",
      version: "1.0.0",
      source_url: "https://github.com/PharosProduction/tutorial-elixir-toml",
      homepage_url: "https://pharosproduction.com",
    ]
  end

  def application do
    [
      mod: {TutorialToml.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:distillery, github: "bitwalker/distillery", runtime: false},
      {:toml, "~> 0.5"} 
    ]
  end
end
