class AlbumsController < ApplicationController

	def index
	  @user = User.find(params[:user_id])
	  @albums = @user.albums.all

	  respond_to do |format|
	  	format.html
	  	format.json { render json: @albums }
	  end
	end

	def show
	  @albums = Album.all
	  @album = Album.find(params[:id])
	  @photo = Photo.new
	end

	def update
	end

	def edit
	end

	def create
	  @user = User.find(params[:user_id])
	  @album = @user.albums.build(params[:album])
	  respond_to do |format|
		if @album.save
		  print @album.errors
		  format.html { redirect_to user_path(@user), notice: 'Album was successfully created.' }
	   	  format.json { render json: @album, status: :created, location: @album}
		else
		  format.html { render action: "new" }
		  format.json { render json: @album.errors, status: :unprocessable_entity }
		end
	  end 
	end

	def new
	  @user = User.find(params[:user_id])
	  @album = Album.new
	end

	def destroy
	end


end
