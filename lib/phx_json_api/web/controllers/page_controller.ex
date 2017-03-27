defmodule PhxJsonApi.Web.PageController do
  use PhxJsonApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
