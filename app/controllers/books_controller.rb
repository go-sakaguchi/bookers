class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    # @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if @book.save
      redirect_to book_path(book.io)
    else
      redirect_to '/books'
    end
    # book.save
    # @book_id = Book.all
    # redirect_to book_path(book.id)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
