class Article
  attr_accessor :title, :description, :posted_at, :url, :contributor, :pubslishedAt

  @@all = []

  def initialize(title, contributor, description, url, publishedAt, category)
    @title = title
    @contributor = contributor
    @description = description
    @url = url
    @publishedAt = publishedAt
    @category = category
    self.class.all << self
    ArticleCategory.new(self, Category.find_or_create_by_name(category.name))
  end

  def self.all
    @@all
  end

  def self.find_all_by_category(categ)
    ArticleCategory.all.select { |art_cat_obj| art_cat_obj.category.name == categ.name }
  end

end
