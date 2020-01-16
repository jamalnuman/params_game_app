Rails.application.routes.draw do
  namespace :api do
  get "/fun" => 'games#tell_me_name'
  get "/letter" => 'games#cap_letter'
  get "/guess_query" => 'games#guess_query'
  get "/guess_number/:numbers" => 'games#guess_number'
  post "/guess_number" => 'games#guess_number_again'
  post "/password" => 'games#password_action'
end
end
