Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources  :movies
      
      get 'search/movies/intheatres', to: 'api_controller#movies_in_theatres' 

    end
  end
end
