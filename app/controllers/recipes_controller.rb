class RecipesController < ApplicationController
require 'open-uri'

def scrapeing_recipe
    require 'open-uri'
    cuisine = 'israeli'
    url = "https://food52.com/recipes/#{cuisine}"
    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.collectable-tile js-collectable-tile js-quick-basket').take(3).each do |element|
    puts element.text.strip
    puts element.attribute('href').value
  end

end
