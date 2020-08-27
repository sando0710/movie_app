class MoviesController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]

  def index
    @movies = Movie.all.order("id DESC")
    @parents = Category.where(ancestry: nil)

  end

  def new
    @movie = Movie.new

    @category_parent_array = ["---"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end
  end

  def get_category_children
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    @user = User.find_by(id: @movie.user_id)

    @comment = Comment.new
    @comments = @movie.comments.includes(:user)

  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
    if @movie.save!

      redirect_to root_path
    else
      render 'new'
    end
  end

private
  def movie_params
    params.require(:movie).permit(:title, :body, :image).merge(user_id: current_user.id)
  end

end
