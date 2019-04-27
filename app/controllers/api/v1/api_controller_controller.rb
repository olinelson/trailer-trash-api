class Api::V1::ApiControllerController < ApplicationController

    BASE_URL="https://api.themoviedb.org/3/"

    def movies_in_theatres
        start_date = "#{Time.current.year}-#{Time.current.month-1}-#{Time.current.day}"
        end_date = "#{Time.current.year}-#{Time.current.month + 2}-#{Time.current.day}"
        response = HTTP.get("#{BASE_URL}discover/movie?primary_release_date.gte=#{start_date}&primary_release_date.lte=#{end_date}",
        :params => {
            :api_key => ENV["API_KEY"]
        } ).to_s
        render json: response
    end

    def get_movie_by_id
        response = HTTP.get("#{BASE_URL}movie/#{params[:id]}",
            :params => {
            :api_key => ENV["API_KEY"]
        } ).to_s
        render json: response
    end

    def get_movie_videos_by_id

       response = HTTP.get("#{BASE_URL}movie/#{params[:id]}/videos",
            :params => {
            :api_key => ENV["API_KEY"]
        } ).to_s
        render json: response 

    end
end
