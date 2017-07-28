class Article
  attr_accessor :title, :description, :posted_at, :url, :contributor, :category

  @@all =[]
  def initialize(title,description,posted_at,url,contributor)
    @title = title
    @description = description
    @posted_at = posted_at
    @url = url
    @contributor = contributor
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end


  def self.find_all_by_category(name)
    Category.all.select do |category|
      category.name == name
    end
  end

end
