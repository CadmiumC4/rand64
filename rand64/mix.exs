defmodule Rand64.MixProject do
  use Mix.Project

  def project do
    [
      app: :rand64,
      version: "0.1.0",
      elixir: "~> 1.12",
      description: "Simple and stupid Elixir library for generating random strings.",
      source_url: "https://github.com/CadmiumC4/rand64.git",
      package: [
      	name: "randomie64",
	licenses: ["GPL-3.0-only"],
	links: []
	],
      
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
