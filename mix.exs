defmodule Conductor.Mixfile do
  use Mix.Project

  def project do
    [app: :conductor,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger],
     mod: {Conductor, []}]
  end

  defp deps do
    [
      {:osc, github: "lpil/osc"},
      {:shouldi, only: :test},
    ]
  end
end
