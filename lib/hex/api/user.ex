defmodule Hex.API.User do
  alias Hex.API

  def get(username_or_email, auth) do
    API.request(:get, API.api_url("users/#{username_or_email}"), API.auth(auth))
  end

  def new(username, email, password) do
    API.request(:post, API.api_url("users"), [],
            %{username: username, email: email, password: password})
  end

  def password_reset(user_or_email) do
    API.request(:post, API.api_url("/users/#{user_or_email}/reset"), [], %{})
  end
end
