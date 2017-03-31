class BlogsController < ApplicationController
    def index
        @blogs = Blog.order(created_at: :desc)
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Teatment')
        @accessories = Service.where(category: 'Accessories')
        @school = Service.where(category: 'School')
        @inquiry = Inquiry.new
    end
    
    def show
        @blog = Blog.find(params[:id])
        @blogs = Blog.order(created_at: :desc).limit(3)
        @services = Service.order(created_at: :desc)
        @aroma = Service.where(category: 'Aroma_Teatment')
        @accessories = Service.where(category: 'Accessories')
        @school = Service.where(category: 'School')
        @inquiry = Inquiry.new
        @labels = Blog.tag_counts_on(:labels).order('count DESC')
    end
    
    def edit
        @blog = Blog.find(params[:id])
    end
    
    def new
        @blog = Blog.new
    end
    
    def create
        @blog = Blog.create(blog_params)
        if @blog.save
            redirect_to :admin_index
        else
        render action: 'new'
        end
    end
        
    def destroy
            @blog = Blog.find(params[:id])
            @blog.destroy!
            flash.notice = 'ブログを削除しました。'
            redirect_to :admin_index
    end
        

    
    private
    
    def blog_params
        params.require(:blog).permit(:title, :content, :label_list, :blogimage)
    end
    
end
