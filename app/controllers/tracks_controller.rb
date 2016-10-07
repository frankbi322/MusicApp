class TracksController< ApplicationController

  def new
    render :new
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def destroy
    redirect_to :index
  end
end
