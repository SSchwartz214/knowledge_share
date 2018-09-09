class Book
  attr_reader :title,
              :authors,
              :image

  def initialize(data)
      @title = data[:volumeInfo][:title]
      @authors = parse_authors(data[:volumeInfo][:authors])
      @image = data[:volumeInfo][:imageLinks][:smallThumbnail] unless nil
  end

  def parse_authors(raw_authors)
    return "Authors not available" if raw_authors.nil?
    return raw_authors[0] if raw_authors.length == 1
    raw_authors.inject('') do |agg, author|
      agg << "#{author}, "
      agg
    end

  end
end
