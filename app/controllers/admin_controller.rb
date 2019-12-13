class AdminController < ApplicationController
    before_action :set_book, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

    def index
        @books = Book.all
        @users = User.all
    end
    
    def show
        @books = Book.find(params[:id])
        @users = User.all
    end

    def new
        @book = Book.new
    end

    def edit
    end

    # CREATE /books/
    def bookcreate
        @book = Book.new(book_params)
    
        respond_to do |format|
          if @book.save
            format.html { redirect_to @book, notice: 'Book was successfully created.' }
            format.json { render :show, status: :created, location: @book }
          else
            format.html { render :new }
            format.json { render json: @book.errors, status: :unprocessable_entity }
          end
        end
      end

      # UPDATE /books/
      def bookupdate
        respond_to do |format|
          if @book.update(book_params)
            format.html { redirect_to @book, notice: 'Book was successfully updated.' }
            format.json { render :show, status: :ok, location: @book }
          else
            format.html { render :edit }
            format.json { render json: @book.errors, status: :unprocessable_entity }
          end
        end
      end

    # DELETE /books/1
    # DELETE /books/1.json
    def bookdestroy
        @book.destroy
        respond_to do |format|
            format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

end
