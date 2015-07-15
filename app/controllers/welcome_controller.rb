class WelcomeController < ApplicationController
  def index
  @guardian = HTTParty.get('http://content.guardianapis.com/search?q=politics&api-key=dc2tmawrmyg2xesbwr6q68d4').to_h["response"]["results"]
  @nytimes = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=30ffb766789e445b73dffdb5f1e23483:6:72504693').to_h["results"]
   @usatoday = HTTParty.get('http://api.usatoday.com/open/articles/topnews/home?count=10&days=1&page=1&encoding=json&api_key=w8g6c8xmqhysh47tejek3yce')
   @npr = HTTParty.get('http://api.npr.org/query?id=1056&fields=title,summary&output=JSON&apiKey=MDE5ODgxNTI1MDE0MzY5MTI3NDRkOWNhNQ001').to_s
   @nprjson = JSON.parse(@npr)
end
end
