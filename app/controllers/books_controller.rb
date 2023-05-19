class BooksController < ApplicationController
  def index
    # @books = List.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    # @book = Book.new
    # book = Book.new(list_params)
    # book.save
    # redirect_to '/'
  end
  
  def show
    
  end
  
  def edit
    
  end
  
  
end
