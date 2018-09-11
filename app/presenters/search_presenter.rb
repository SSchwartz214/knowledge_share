class SearchPresenter

  def initialize(title)
    @title = title
  end

  def books
    service.books.map do |book_data|
      GoogleBook.new(book_data)
    end
  end

  private
    attr_reader :title

      def service
        GoogleBooksService.new(title)
      end

end
