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



Pry.start
