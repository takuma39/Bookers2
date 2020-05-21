class BooksController < ApplicationController
	def new
		@book = Book.new
    end

    def create
    	@book = Book.new(book_params)
    	@book.user_id = current_user.id
    	if @book.save
    	   redirect_to books_path
        else
            render :show
        end
    end

    def index


    end

    def show
    	@post_image = PostImage.find(params[:id])
        @user = User.find(params[:id])
    end

    private
    def book_params
        params.require(:book).permit(:title, :body, :user_id)
    end
end

# @books = Book.all.page(params[:page]).reverse_order