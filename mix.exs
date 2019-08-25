defmodule Waffle.Ecto.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :waffle_ecto,
     version: @version,
     elixir: "~> 1.4",
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps(),

    # Hex
     description: description(),
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :waffle]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  defp description do
    """
    An integration with Waffle and Ecto.
    """
  end

  defp package do
    [maintainers: ["Boris Kuznetsov"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/elixir-waffle/waffle_ecto"},
     files: ~w(mix.exs README.md CHANGELOG.md lib)]
  end

  defp deps do
    [
      {:waffle, "~> 0.0.1"},
      {:ecto, ">= 2.1.0"},
      {:mock, "~> 0.3.3", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
