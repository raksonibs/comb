defmodule Comb.Mixfile do
  use Mix.Project

  def project do
    [app: :comb,
     version: "0.0.2",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

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
    [
    ]
  end

  defp description() do
    "Combination library"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "comb",
      # These are the default files included in the package
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Oskar Niburski"], # note: Original library not published on hex, https://github.com/tallakt/comb
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/raksonibs/comb"}
    ]
  end
end
