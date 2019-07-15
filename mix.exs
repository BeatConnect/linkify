defmodule Linkify.Mixfile do
  use Mix.Project

  @version "0.1.1"

  def project do
    [
      app: :linkify,
      version: @version,
      elixir: "~> 1.8",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [extras: ["README.md"]],
      package: package(),
      name: "Linkify",
      description: """
      Linkify is a basic package for turning website names into links.
      """
    ]
  end

  # Configuration for the OTP application
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  defp deps do
    [
      {:ex_doc, "~> 0.20", only: :dev, runtime: false},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitLab" => "https://git.pleroma.social/pleroma/linkify"},
      files: ~w(lib priv README.md mix.exs LICENSE)
    ]
  end
end
