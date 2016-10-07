class AlbumsController< ApplicationController

  def new
    @band = Band.find(params[:band_id])
    @album = Album.new(band_id: params[:band_id])
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to band_url(@album.band_id)
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  private
  def album_params
    params.require(:album).permit(:band_id, :name, :year, :live)
  end

end
