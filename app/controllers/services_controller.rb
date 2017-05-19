class ServicesController < ApplicationController
    def index
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Treatment')
        @accessories = Service.where(category: 'Accessories')
        @goods = Service.where(category: 'Goods')
        @school = Service.where(category: 'School')
        @inquiry = Inquiry.new
        @blogs = Blog.order(created_at: :desc).limit(3)
    end
    
    def show
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Treatment')
        @accessories = Service.where(category: 'Accessories')
        @goods = Service.where(category: 'Goods')
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
    
    def update
        @service = Service.find(params[:id])
        if @service.update(service_params)
            flash.notice = 'サービスを更新しました。'
            redirect_to :admin_index
            else
            render action: 'edit'
        end
    end
    
    private

    def service_params
        params.require(:service).permit(:name, :content, :category, :price, :service_image, :eventdate)
    end


end
