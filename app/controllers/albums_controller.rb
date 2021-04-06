class AlbumsController < ApplicationController


    def new
        @album = Album.new(band_id: params(:band_id))
        render :new
    end 

    def create
        @album = Album.new(album_params)

        if @album.save!
            redirect_to band_url(@album.band_id)
        else 
            render :new
        end 
    end 

    def edit 
        @album = Album.find(band_id: params[:band_id])
        render :edit
    end 

    def update 
        @album = Album.find(band_id: params[:band_id])

        if @band.update_attributes(album_params)
            redirect_to band_url(@album.band_id)
        else 
            flash.now[:errors] = @album.errors.full_messages
            render :edit
        end 
    end 

    def show
        @album = Album.find(band_id: params[:band_id])
        render :show
    end 


    private 

    def album_params
        params.require(:album).permit(:band_id, :title, :year, :album_type)
    end 

end 