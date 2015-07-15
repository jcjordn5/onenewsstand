class WelcomeController < ApplicationController
  def index
  @usatodaybreaking =  HTTParty.get('http://api.usatoday.com/open/breaking?expired=true&api_key=cq8p2k75c6qxqua5m58kd8df')
  @guardian = HTTParty.get('http://content.guardianapis.com/search?q=politics&api-key=dc2tmawrmyg2xesbwr6q68d4')
end
end
