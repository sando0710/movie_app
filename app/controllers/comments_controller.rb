class CommentsController < ApplicationController

  # def index
  # end
  #
  # def show
  #   @comment = Comment.new
  #   @comments = @movie.comments.includes(:user)
  # end

  def create
    comment = Comment.create(comment_params)
    if comment.save!
      # binding.pry
      redirect_to "/movies/#{comment.movie.id}"
    end

  end

  # def update
  # end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, movie_id: params[:movie_id])
  end

end
