class TopController < ApplicationController
    
    def index
        @blogs = Blog.order(:created_at).limit(3)
        @services = Service.order(:created_at)
        @aroma = Service.where(category: 'Aroma_Treatment')
        @accessories = Service.where(category: 'Accessories')
        @goods = Service.where(category: 'Goods')
        @school = Service.where(category: 'School')
        @news = Service.where(category: 'School' ).limit(10).reverse_order
        @inquiry = Inquiry.new
    end
    
    def show
    end
    
    
end
