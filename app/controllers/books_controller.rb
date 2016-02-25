class BooksController < ApplicationController
  before_action :all_books, only:[:index, :create, :update, :destroy]
  before_action :set_book, only: [:show, :edit, :update, :destroy]


  # GET /books/new
  def new
    @book = Book.new
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.create(book_params)
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
  end
  # DELETE /books/1
  # DELETE /books/1.json
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def all_books
      @books = Book.all
    end  
    
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :author, :link)
    end
end
