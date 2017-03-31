class ServicesController < ApplicationController
    def index
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Teatment')
        @accessories = Service.where(category: 'Accessories')
        @school = Service.where(category: 'School')
        @inquiry = Inquiry.new
        @blogs = Blog.order(created_at: :desc).limit(3)
    end
    
    def show
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Teatment')
        @accessories = Service.where(category: 'Accessories')
        @school = Service.where(category: 'School')
        @service = Service.find(params[:id])
        @blogs = Blog.order(created_at: :desc).limit(3)
        @inquiry = Inquiry.new
    end
    
    def edit
        @service = Service.find(params[:id])
    end

    def new
        @service = Service.new
    end


    def create
        @service = Service.create(service_params)
        if @service.save
        redirect_to :admin_index
        else
        render action: 'new'
        end
            
    end

    def destroy
        @service = Service.find(params[:id])
        @service.destroy!
        flash.notice = 'サービスを削除しました。'
        redirect_to :admin_index
    end

    private

    def service_params
        params.require(:service).permit(:name, :content, :category, :price, :service_image)
    end


end
