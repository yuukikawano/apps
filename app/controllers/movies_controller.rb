class MoviesController < ApplicationController
    def index 
        @movies = Movie.all 
    end 

    def new 
        @movie = Movie.new 
    end 

    def create 
        @movie = Movie.create(movie_params)
        @movie.owner_id = current_user.id 
        @movie.save 
        redirect_to movie_path
    end 

    def show 
        @movie = Movie.find(params[:id])
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
    end

    private 
      def movie_params 
        params.require(:movie).permit(:title, :content, :movie)
      end
end
