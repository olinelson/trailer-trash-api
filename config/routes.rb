Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources  :movies
      
      get 'search/movies/intheatres', to: 'api_controller#movies_in_theatres' 

      get 'search/movies/:id', to: 'api_controller#get_movie_by_id'
    end
  end
end
