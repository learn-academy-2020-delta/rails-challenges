class BlogController < ApplicationController
    def index
        @blogs = Blog.all
    end

    def show
        @blog = Blog.find(params[:id])
    end

    def new
      @blog = Blog.new
    end

    def create
        @blog = Blog.create(
            blog_params
        )
        if @blog.valid?
            redirect_to blogs_path
        else
           # @blog.errors.messages => {:title=>["can't be blank", "title is not unique", "is too short (minimum is 10 characters)"]}
           flash.now[:alert] = "Title: Must be unique and 10 characters long!"
           redirect_to new_blogs_path
            # redirect_to blogs_path
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy
            redirect_to blogs_path
        else
            redirect_to blog_path(@blog)
        end
    end

    def update
        @blog = Blog.find(params[:id])
        @blog.update(
            title: params[:title],
            content: params[:content]
        )
        if @blog.valid?
            redirect_to blog_path(@blog)
        else
            redirect_to blogs_path
        end
    end

    def edit
    end

    private
      def blog_params
        params.require(:blog).permit(:title, :content)
      end
end
