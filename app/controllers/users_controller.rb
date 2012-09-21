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
	  @user = User.new(params[:user])

	  if @user.save
	    respond_to do |format|
	  	  format.html { redirect_to user_path(@user), notice: 'User was successfully created.'}
        end
      else
    	flash[:notice] = "Invalid. Please try again."
    	render 'new'
      end
	end

	def show
	  @user = User.find(params[:id])
	end
end
