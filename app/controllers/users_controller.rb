class UsersController < ApplicationController

	def index
	  @users = User.all
	end

	def new
	  @user = User.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @user }
      end
	end 

	def create
	  @user = User.create!(params[:user])

	  respond_to do |format|
	  	format.html { redirect_to user_path(@user), notice: 'User was successfully created.'}
      end
	end

	def show
	  @user = User.find(params[:id])
	end
end
