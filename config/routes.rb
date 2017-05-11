Rails.application.routes.draw do
  get "/" => "resumes#index" 
  get "/resumes/:id" => "resumes#show"

  namespace :api do
    namespace :v1 do
      get "/resumes" => "resumes#index"
      get "/resumes/:id" => "resumes#show"

    end
  end
  
end
