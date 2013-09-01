Dynamo.under_test(WebXmlGenerator.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule WebXmlGenerator.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
