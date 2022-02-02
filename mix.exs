defmodule Mapsi.MixProject do
  use Mix.Project

  @scm_url "https://github.com/hergetto/mapsi"

  def project do
    [
      app: :mapsi,
      name: "mapsi",
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      packages: package(),
      docs: docs(),
      source_url: @scm_url,
      description: "Mapsi is a library for creating/generating a sitemap."
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp package do
    [
      maintainers: ["Joost de Jager", "Shivam Badal", "Thijs van der Heijden"],
      license: ["MIT"],
      links: %{"GitHub" => @scm_url}
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: "main",
      extras: [
        "README.md"
      ]
    ]
  end
end
