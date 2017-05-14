class AdminController < ApplicationController
    
    def index
        @blogs = Blog.order(created_at: :desc)
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Teatment')
        @accessories = Service.where(category: 'Accessories')
        @goods = Service.where(category: 'Goods')
        @school = Service.where(category: 'School')
    end
end
