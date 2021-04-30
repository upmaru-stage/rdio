defmodule RdioWeb.PageController do
  use RdioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
