class Contributor
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    result = @@all.find { |contributor_obj| contributor_obj.first_name == name }
    if result.nil?
      Contributor.new(name, nil)
    else
      result
    end
  end

  def articles
    Article.all.select { |article_obj| article_obj.contributor == self }
  end

  def categories
    # unfinished
    Article.all.select { |article_obj| article_obj.contributor == self }.uniq
  end

end
