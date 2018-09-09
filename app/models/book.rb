class Book
  attr_reader :title,
              :image

  def initialize(data)
      @title = data[:volumeInfo][:title]
      @authors = data[:volumeInfo][:authors]
      @image = data[:volumeInfo][:imageLinks][:smallThumbnail]
  end

  def author
    @authors.each do |author|
        author
    end
  end
end
