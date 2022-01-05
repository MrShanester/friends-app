class ActionsController < ApplicationController
  def index
    action = Action.all
    render json: action.as_json
  end

  def show
    action = Action.find_by(id: params[:id])
    render json: action.as_json
  end

  def create
    action = Action.new(
      friend_id: params[:friend_id],
      title: params[:title],
      description: params[:description],
      evaluation: params[:evaluation],
      points: params[:points]
    )
    action.save
    render json: action.as_json
  end
  def edit
    action = Action.find_by(id: params[:id])
    action.friend_id = params[:friend_id] || action.friend_id
    action.title = params[:title] || action.title
    action.description = params[:description] || action.description
    action.evaluation = params[:evaluation] || action.evaluation
    action.points = params[:points] || action.points
    action.save
    render json: action.as_json
  end

  def destroy
    action = Action.find_by(id: params[:id])
    action.delete
    render json: {message: "Action Erased"}
  end
end
