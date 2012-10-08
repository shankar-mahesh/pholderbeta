class FriendsController < ApplicationController
# before_filter :signed_i, :except => [:index, :show]

  def index
  	@user = User.find(params[:user_id])
  end

  def show
  	redirect_to user_path(params[:id])
  end

  def new
  	@friendship1 = Friendship.new
  	@friendship2 = Friendship.new
  end

  def create
  	@user = User.find(current_user)
  	@friend = User.find(params[:friend_id])
  	params[:friendship1] = { :user_id => @user.id, :friend_id => @friend.id, :status => 'requested' }
  	params[:friendship2] = { :user_id => @friend.id, :friend_id => @user.id, :status => 'pending'}
  	@friendship1 = Friendship.create(params[:friendship1])
  	@friendship2 = Friendship.create(params[:friendship2])
  	if @friendship1.save && @friendship2.save
  	  redirect_to user_friends_path(current_user)
  	else
  	  flash[:error] = "Unable to add friend."
  	  redirect_to user_path(current_user)
  	end
  end

  def update
  	@user = User.find(current_user)
  	@friend = User.find(params[:id])
  	params[:friendship1] = { :user_id => @user.id, :friend_id => @friend.id, :status => 'accepted' }
  	params[:friendship2] = { :user_id => @friend.id, :friend_id => @user.id, :status => 'accepted' }
  	@friendship1 = Friendship.find_by_user_id_and_friend_id(@user.id, @friend.id)
  	@friendship2 = Friendship.find_by_user_id_and_friend_id(@friend.id, @user.id)
  	if @friendship1.update_attributes(params[:friendship1]) && @friendship2.update_attributes(params[:friendship2])
  	  flash[:notice] = "Friend added."
  	  redirect_to user_friends_path(current_user)
  	else
  	  flash[:error] = "An error occured."
  	  redirect_to user_path(current_user)
  	end
  end

  def destroy
  	@user = User.find(params[:user_id])
  	@friend = User.find(params[:id])
  	@friendship1 = @user.friendships.find_by_friend_id(params[:id])
  	@friendship2 = @friend.friendships.find_by_friend_id(params[:user_id])
  	@friendship1.destroy
  	@friendship2.destroy
  	flash[:notice] = "Friend deleted." 
  	redirect_to user_friends_path(current_user)
  end

end
