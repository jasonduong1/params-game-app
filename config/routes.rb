Rails.application.routes.draw do
  get "/name_path" => "params#name"

  get "/more_path/:sub_one/:sub_two" => "params#pathing"

  get "/guess_number/:number" => "params#guess_number"

  get "/guess_number" => "params#guess_number"

  post "/guess_number" => "params#guess_number"

  post "/body_params" => "params#secret"

  post "/credentials" => "params#login"
end
