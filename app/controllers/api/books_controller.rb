class Api::BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_path
  end
end

private

def book_params
  params.require(:book).permit(:title, :author, :blurb, :difficulty, :topics, :healings)
end
