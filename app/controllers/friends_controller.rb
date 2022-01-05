class FriendsController < ApplicationController
  def index
    friend = Friend.all
    render json: friend
  end

  def show
    friend = Friend.find_by(id: params[:id])
    render json: friend
  end

  def create
    friend = Friend.new(name: params[:name], friend_score: 0)
    friend.save
    render json: friend
  end

  def edit
    friend = Friend.find_by(id: params[:id])
    friend.name = params[:name] || friend.name
    friend.friend_score = params[:friend_score] || friend.friend_score
    friend.save
    render json: friend
  end

  def destroy
    friend = Friend.find_by(id: params[:id])
    friend.delete
    render json: {message: "Friend Cancelled!"}
  end
end
