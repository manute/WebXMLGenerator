defmodule WebXmlGenerator.Mixfile do
  use Mix.Project

  def project do
    [ app: :web_xml_generator,
      version: "0.0.1",
      dynamos: [WebXmlGenerator.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/web_xml_generator/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { WebXmlGenerator, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0-dev", github: "elixir-lang/dynamo" } ,
      { :xml_writer, github: "manute/XMLWriter" }]
  end
end
