class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    # @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    @book_id = Book.all
    redirect_to '/books/#{book.id}'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @books = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
