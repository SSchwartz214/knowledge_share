class GoogleBook
  attr_reader :title,
              :authors,
              :description,
              :page_count

  def initialize(data)
      @title = data[:volumeInfo][:title]
      @authors = parse_authors(data[:volumeInfo][:authors])
      @sm_image = data[:volumeInfo][:imageLinks][:smallThumbnail] if data[:volumeInfo][:imageLinks]
      @bg_image = data[:volumeInfo][:imageLinks][:thumbnail] if data[:volumeInfo][:imageLinks]
      @description = data[:volumeInfo][:description]
      @page_count = data[:volumeInfo][:pageCount]
  end

  def sm_image
    return @sm_image if @sm_image
    'https://screenshotlayer.com/images/assets/placeholder.png'
  end

  def bg_image
    return @bg_image if @bg_image
    'https://screenshotlayer.com/images/assets/placeholder.png'
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
