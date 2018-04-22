defmodule Panda do

  def upcoming_matches do
    url = "https://api.pandascore.co/matches/upcoming?sort=begin_at&page[size]=5&token=" <> Application.get_env(:panda, :token)
    %{body: body} = HTTPoison.get! url
    r = Poison.Parser.parse! body
    for n <- r, do: %{"begin_at" => n["begin_at"], "id" => n["id"], "name" => n["name"]}
  end
  
end
