class ArticleCategories

  attr_accessor :article, :categories

  @@all = []
  @@count = {}

  def initialize(article,categories)
    @article = article
    @categories = categories
    @@all << self

    @categories.each do |category|
      if !@@count[categories]
        @@count[categories] = 1
      else
        @@count[categories] += 1
      end
    end

  end

  def self.all
    @@all
  end

  def article
    self.article
  end

  def categories
    self.categories
  end

  def count
    @@count
  end

end
