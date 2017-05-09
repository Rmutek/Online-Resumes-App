Rails.application.routes.draw do
  get "/" => "resumes#index" 

  namespace :api do
    namespace :v1 do
      get "/resumes" => "resumes#index"

    end
  end
  
end
