class GoogleBooksService
  def initialize(title)
    @title = title
  end

  def books
    JSON.parse(response.body, symbolize_names: true)[:items]
  end

  private
    attr_reader :title

    def response
      conn.get("/books/v1/volumes?q=#{title}")
    end

    def conn
      Faraday.new(url: "https://www.googleapis.com") do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end
end
