class TopController < ApplicationController
    
    def index
        @blogs = Blog.order(:created_at).limit(3)
        @services = Service.order(:created_at)
        @aroma = Service.where(category: 'Aroma_Teatment')
        @accessories = Service.where(category: 'Accessories')
        @school = Service.where(category: 'School')
        @inquiry = Inquiry.new
    end
    
    def show
    end
    
    
end
