defmodule WebXmlGenerator.Dynamo do
  use Dynamo

  config :dynamo,
    # The environment this Dynamo runs on
    env: Mix.env,

    # The OTP application associated with this Dynamo
    otp_app: :web_xml_generator,

    # The endpoint to dispatch requests to
    endpoint: ApplicationRouter,

    # The route from which static assets are served
    # You can turn off static assets by setting it to false
    static_route: "/static"

  # Uncomment the lines below to enable the cookie session store
  # config :dynamo,
  #   session_store: Session.CookieStore,
  #   session_options:
  #     [ key: "_web_xml_generator_session",
  #       secret: "vJCJti5gZ8O2Ov+2tTh4N2gJnJw4phz7Mips8I59qKE7BagzM3Si7WsJhzWZ4xdh"]

  # Default functionality available in templates
  templates do
    use Dynamo.Helpers
  end
end
