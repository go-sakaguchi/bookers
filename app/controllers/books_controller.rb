class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
    @book_confirm = Book.new
  end

  def new
    # @book = Book.new
  end

  def create
    @book_confirm = Book.new(book_params)

    if @book_confirm.save
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book_confirm.id)
    else
      @books = Book.all
      @book = Book.new(book_params)
      render :index
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
    @book_confirm = Book.new
  end

  def update
    @book_confirm = Book.find(params[:id])

    if @book_confirm.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book_confirm.id)
    else
      @book = Book.find(params[:id])
      render :edit
    end
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
