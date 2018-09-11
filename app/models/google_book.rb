class GoogleBook
  attr_reader :title,
              :authors,
              :sm_image,
              :bg_image,
              :description,
              :page_count

  def initialize(data)
      @title = data[:volumeInfo][:title]
      @authors = parse_authors(data[:volumeInfo][:authors])
      @sm_image = data[:volumeInfo][:imageLinks][:smallThumbnail] unless nil
      @bg_image = data[:volumeInfo][:imageLinks][:thumbnail] unless nil
      @description = data[:volumeInfo][:description]
      @page_count = data[:volumeInfo][:pageCount]
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
