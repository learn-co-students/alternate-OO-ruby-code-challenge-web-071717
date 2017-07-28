require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'

bob = Contributor.new('Bob', 'Smith')
linda = Contributor.new('Linda', 'Jones')
terry = Contributor.new('Terry', 'Smith')

news = Category.new('news')
sport = Category.new('sport')
weather = Category.new('weather')

article1 = Article.new('today', bob, 'todays news', 'news.com', '2.00', news)
article2 = Article.new('people running', linda, 'todays sports', 'sports.com', '4.00', sport)
article3 = Article.new('sunny', linda, 'todays weather', 'weather.com', '6.00', weather)
article4 = Article.new('tomorrow', bob, 'tomorrows news', 'news.com', '8.00', news)

# puts '-----Category-----'
# puts Category.all
# puts Category.find_or_create_by_name(news)
# puts news.articles
#   # + Returns an Array of Article instances associated with this category
# puts Category.most_articles
#   # Returns category with the most articles associated with it
#
# puts -----Contributor:
# - Contributor#all
#   + Class level method that returns all Contributor instances. When a contributor instance is initialized, it should be added to the collection of all Contributor instances.
# - Contributor.find_or_create_by_name(name)
#   + If a contributor  with this name exists, this method returns it. Otherwise, it creates the new contributor instance
# - Contributor#articles
#   + Returns all the articles the contributor has written
# - Contributor#categories
#   + Returns all categories this contributor has written articles for
#
# Article:
# - Article#all
#   + Class level method that returns all Article instances. When an article instance is initialized, it should be added to the collection of all Article instances.
# - Article.find_all_by_category(category)
#   + Takes a category instance as an argument, and returns all articles associated with it
#
# ArticleCategories
# - ArticleCategories#all
#   + Class level method that returns all ArticleCategories instances. When an ArticleCategories instance is initialized, it should be added to the collection of all ArticleCategories instances.
# - ArticleCategory#article
#   + Returns the associated article instance
# - ArticleCategory#category
#   + Returns the associated category instance

Pry.start
