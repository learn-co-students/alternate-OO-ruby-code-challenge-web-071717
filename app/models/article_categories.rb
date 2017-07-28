class ArticleCategory

  attr_accessor :article, :category

  @@all = []

  def initialize(article, category)
    @article = article
    @category = category
    self.class.all << self
  end

  def self.all
    @@all
  end

end
