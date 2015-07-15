class WelcomeController < ApplicationController
  def index
  @guardian = HTTParty.get('http://content.guardianapis.com/search?q=politics&api-key=dc2tmawrmyg2xesbwr6q68d4').to_h["response"]["results"]
  @nytimes = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=30ffb766789e445b73dffdb5f1e23483:6:72504693').to_h["results"]
  puts @guardian
end
end
