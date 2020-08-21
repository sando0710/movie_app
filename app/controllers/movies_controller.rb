class MoviesController < ApplicationController
  def index
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      render 'index'
    else
      render 'new'
    end
  end

private
  def movie_params
    params.require(:movie).permit(:title, :body, :image_url)
  end
end
