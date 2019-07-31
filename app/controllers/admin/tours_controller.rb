module Admin
  class ToursController < Admin::BaseController
    before_action :set_tour, only: [:show, :edit, :update, :destroy]
    
    def index
      @tours = Tour.all
    end

    def new
      @tour = Tour.new
    end

    def create
      @tour = Tour.new(tour_params)
      if @tour.save
        flash[:notice] = 'Tour has been saved.'
        redirect_to admin_tours_path
      else
        render :new
      end
    end

    def edit
      @tour = Tour.find(params[:id])
    end

    def update
      @tour = Tour.find(params[:id])
      if @tour.update(tour_params)
        flash[:notice] = 'Tour Updated.'
        redirect_to admin_tours_path
      else
        render :new
      end
    end

    def destroy
      @tour = Tour.find(params[:id])
      @tour.destroy
      redirect_to admin_tours_path, notice: "Delete Success"
    end

    private

    def set_tour
      @tour = Tour.find(params[:id])
    end

    def tour_params
      params.require(:tour).permit(:title, :location, :start_location, :duration_start, :duration_end, :price, :policy, :promo, :inventory, :status)
    end

  end
end