class AlbumsController < ApplicationController

	def index
	  @albums = Albums.all

	  respond_to do |format|
	  	format.html
	  	format.json { render json: @albums }
	  end
	end

	def show
	  @albums = Album.all
	  @album = Album.find(params[:id])
	end

	def update
	end

	def edit
	end

	def create
	  @users = User.all
	  @album = Album.new(params[:album])
	  @album.user_id = current_user.id
	  if @album.save
	    flash[:success] = "Album created!"
	    redirect_to @album
	  end 
	end


	# def create
	#   @users = User.all
	#   @user = User.first
	#   # @user = User.find(params[:album][:user_id])
	#   @album = @user.albums.build(params[:album])
	#   if @album.save
	#   	flash[:success] = "Album created!"
	#   	redirect_to @album
	#   end 
	# end

	def new
	  @user = User.find(params[:user_id])
	  @album = Album.new
	end

	def destroy
	end


end
