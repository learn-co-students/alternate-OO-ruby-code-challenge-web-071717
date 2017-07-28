class Category
  attr_accessor :name, :article

  @@all = []
  def initialize(name)
    @name = name
  end

  @@all = []

    def self.all
      @@all
    end

    def count
      @count
    end

    def find_or_create_by_name(name)
      if self.all.find{|category| category.name == name}
        category
      else
        self.new(name)
      end
    end

    def articles
      Articles.all.select do |article|
        article.category == self
      end
    end

    def self.most_articles
      highest_number = 0
      ArticleCategories.count.each do |artcat, val|
        if val > highest_number
          highest_number = val
          return artcat
        end
      end
end
