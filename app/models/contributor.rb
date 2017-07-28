class Contributor
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name,last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if !self.all.find{|contributor| contributor.name == name}
      self.new(name.split[0], name.split[1])
    else
      self.all.find{|contributor| contributor.name == name}
    end
  end

  def articles
    Articles.all.select do |article|
      article.contributor == self
    end 
  end

  def categories
    articles.all.map do |article|
      article.category
    end
  end


end
