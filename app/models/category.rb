class Category

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_or_create_by_name(name)
    result = self.all.find { |category_obj| category_obj.name == name}
    if result.nil?
      Category.new(name)
      else
        result
      end
  end

  def self.all
    @@all
  end

  def articles
    ArticleCategory.all.select { |art_cat_obj| binding.pry art_cat_obj.category == self }#.map { |art_cat_filtered| art_cat_filtered.article }
  end

  def category
    # insert
  end


end
