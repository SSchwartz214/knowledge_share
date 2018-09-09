class SearchPresenter

  def initialize(title)
    @title = title
  end

  def books
    response = Faraday.get("https://www.googleapis.com/books/v1/volumes?q=#{@title}")
    JSON.parse(response.body, symbolize_names: true)[:items]
    .map do |book_data|
      Book.new(book_data)
    end
  end

end
