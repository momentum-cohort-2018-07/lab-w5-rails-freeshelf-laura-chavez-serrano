class BooksController < ApplicationController
    def index
        user_ids = ""
        @books = Book.all
        session[:current_user_id] = user_ids
        puts user_ids
    end   

    def show
        @book = Book.find(params[:id])
    end

    def new
        @book = Book.new
    end
    def edit
        @book = Book.find(params[:id])
      end

    def create
        @book = Book.new(book_params)

        if @book.save
        redirect_to @book
        else
        render 'new'
        end
    end
 
    def update
        @book = Book.find(params[:id])
       
        if @book.update(book_params)
          redirect_to @book
        else
          render 'edit'
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
       
        redirect_to books_path
    end
    private
        def book_params
            params.require(:book).permit(:title, :publisher, :URL, :description, :author, :user_id, :checkout)
        end
end
