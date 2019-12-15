class BooksController < ApplicationController
  include Pagy::Backend

  before_action :set_book, only: [:show, :edit, :update, :destroy]

  # GET /books
  # GET /books.json
  def index
    @pagy, @books = pagy(Book.all, items: 10)
      search = params[:search]
      @book_search = Book.where('title like ?', "%#{search}%")
  end

  # GET /books/1
  # GET /books/1.json
  def show
    @books = Book.find(params[:id])
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
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

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
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
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:book_id, :title, :author, :avg_rating, :isbn, :language_code, :num_page, :rating_count, :text_review_count, :price)
    end
end

#class BookCover

  #include HTTPparty
  # Searching The chosen API with the following link
  #base_uri "covers.openlibrary.org/b/isbn/"

  #def posts
   # self.class.get('/posts.json')
  #end
#end

# Create a variable and a new instance of the class:
#book_cover = BookCover.new
# to call the method:
#puts book_cover.posts