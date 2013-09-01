defmodule ApplicationRouter do
  use Dynamo.Router
 
  @path_xml_generator "/Users/usuario/manu-projects/elixir/test_xml_writed"

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  # It is common to break your Dynamo into many
  # routers, forwarding the requests between them:
  # forward "/posts", to: PostsRouter

  get "/" do
    conn = conn.assign(:title, "Welcome to Dynamo!")
    render conn, "index.html"
  end

  post "/generate_xml" do    
    xml = XmlWriter.file(file_path("users_web"), String.split(conn.params[:data], ","), conn.params[:type_xml])
    if(xml == :ok) do
      render conn, "success.html"
    else 
      render conn,"index.html"
    end  
  end

  defp file_path(name) do
    "#{@path_xml_generator}/#{name}.xml"
  end

end
