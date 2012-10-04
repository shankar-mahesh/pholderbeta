class UsersController < ApplicationController

	def index
	  @users = User.all

	  respond_to do |format|
	  	format.html
	  	format.json { render json: @users }
	  end
	end

	def new
      @form_page = true
	  @user = User.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @user }
      end
	end 

	def create
	  @user = User.new(params[:user])

	  respond_to do |format|
	  	if @user.save
	  	  sign_in(@user)
	  	  format.html { redirect_to @user, notice: 'User successfully created.' }
	  	  format.json { render json: @user, status: :created, location: @user }
	  	else
	  	  format.html { render action: 'new' }
	  	  @form_page = true
	  	  format.json { render json: @user.errors, status: :unprocessable_entity }
	  	end
      end
	end

	def show
	  @user = User.find(params[:id])
	  @albums = Album.all
	end

	def update
	  @user = User.update_attributes(params[:user])
	  if @user.save
	  	format.html { redirect_to @user, notice: 'User successfully updated.'}
	  	format.json { render json: @user, status: :created, location: @user }
	  else
	  	format.html { render action: 'edit' }
	  	format.json { render json: @user.errors, status: :unprocessable_entity }
	  end
	end

end
