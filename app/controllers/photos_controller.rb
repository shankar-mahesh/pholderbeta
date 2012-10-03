class PhotosController < ApplicationController

	def new
	  @user = User.find(params[:user_id])
	  @album = @user.albums.find(params[:album_id])
	  @photo = @album.photos.build
	end

	def create
	  @user = User.find(params[:user_id])
	  @album = Album.find(params[:album_id])
      @photo = @album.photos.build(params[:photo])
	  respond_to do |format|
		if @album.save
		  format.html { redirect_to user_album_photo_path(@user, @album, @photo), notice: 'Album was successfully created.' }
	   	  format.json { render json: @album, status: :created, location: @album}
		else
		  format.html { render action: "new" }
		  format.json { render json: @album.errors, status: :unprocessable_entity }
		end
	  end
	end

	def show
	  @album = Album.find(params[:album_id])
	  @photos = @album.photos
	end


end


	
