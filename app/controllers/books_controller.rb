class BooksController < ApplicationController
        def index
            @books = Book.all
        end
        
        def show
            @book = Book.find(params[:id])
        end
        
        def new
            # @library =Library.all
            @libraries = Library.all
            @book = Book.new
        end
        
        def edit
            @libraries = Library.all
            @book = Book.find(params[:id])
        end
        
        def create            
            @libraries = Library.all
            @book = Book.create(book_params)          
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
                params.require(:book).permit( :library_id, :TitleOfTheBook, :author, :cipher, :publishing_house, :TheYearOfPublishing, :price,:receipt_date)
            end
end
