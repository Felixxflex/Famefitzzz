class CelebsController < ApplicationController
    
    skip_before_action :authenticate_user!, :raise => false
    before_action :set_celeb, only: [:show]
    http_basic_authenticate_with :name => 'FelixxFel', :password => 'Jordanshacker1710.shivflex.2020', only: :new

    def index
      
      if params[:search_by_name_and_date].nil? || params[:search_by_name_and_date].empty?
        @celebs = Celeb.all.order(name: :desc)
      else
        @celebs = Celeb.search_by_title_and_location(params[:search_by_name_and_date]).order(name: :desc)
      end
        @q = Celeb.ransack(params[:q])
        @celebs = @q.result

        
      
    end

  
     
    def show
     
    end
  
    def new
      @celeb = Celeb.new()
    end
  
    
    
    def create
    
    @celeb = Celeb.new(celeb_params)
      
      if @celeb.save
        redirect_to celeb_path(@celeb)
      else
        render :new
      end
    end
    
    def destroy
      @celeb.destroy
      redirect_to celebs_path
    end

   
    
      def edit
      end
    
      def update
        @celeb.update(celeb_params)
        redirect_to celeb_path(@celeb)
      end

    private
  
  def set_celeb
    @celeb = Celeb.find(params[:id])   
  end
  
  def celeb_params
    params.require(:celeb).permit(:name, :date, :description, :shop_title, :description_link2, :description_link3, :description_link4, :description_link5, :description_link6, :description_link7, :description_link8, :title_link2, :title_link3, :title_link4, :title_link5, :title_link6, :title_link7, :title_link8, photos: [])
  end
   
end