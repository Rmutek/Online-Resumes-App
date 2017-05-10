Rails.application.routes.draw do
  get "/" => "resumes#index" 
  get "/show" => "resumes#show"
end
