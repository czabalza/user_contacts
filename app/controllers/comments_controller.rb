class CommentsController < ApplicationController
  def index
    render json: params
  end
end
