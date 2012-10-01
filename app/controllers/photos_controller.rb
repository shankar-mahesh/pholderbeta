class PhotosController < ApplicationController


	def create
      @photo = @album.photos.build(params[:photo])
	  respond_to do |format|
		if @album.save
		  format.html { redirect_to @album, notice: 'Album was successfully created.' }
	   	  format.json { render json: @album, status: :created, location: @album}
		else
		  format.html { render action: "new" }
		  format.json { render json: @album.errors, status: :unprocessable_entity }
		end
	end
end
