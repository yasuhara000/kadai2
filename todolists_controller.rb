class TodolistsController < ApplicationController



  def index
    @book = Book.new
    @books = Book.all
  end

 def create
    @book = Book.new(params_book)
    @books = Book.all
    if @book.save
      flash[:notice] = "successfully"
      redirect_to book_path(@book)

    else
      render "/todolists/index"
    end

end



  def show
    @book = Book.find(params[:id])

  end

  def edit
    @book = Book.find(params[:id])

  end
  def update

      @book=Book.find(params[:id])
      @book.update(params_book)
      if @book.save
          flash[:notice] = "successfully"
          redirect_to book_path
      else
          render :edit
      end

  end

  def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_path

  end

  private

  def params_book
    params.require(:book).permit(:title, :body)
  end


end
