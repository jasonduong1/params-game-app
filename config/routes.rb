Rails.application.routes.draw do
  get "/query_path" => "params#name"

  get "/more_path/:sub_one/:sub_two" => "params#pathing"

  get "/guess_number/:number" => "params#guess_number"
end
