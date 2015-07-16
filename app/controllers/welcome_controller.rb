class WelcomeController < ApplicationController
  def index
  headers = { Authorization: "Client-ID 449d68ec45b2592"}
  @guardian = HTTParty.get('https://content.guardianapis.com/search?q=politics&api-key=dc2tmawrmyg2xesbwr6q68d4').to_h["response"]["results"]
  @nytimes = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=30ffb766789e445b73dffdb5f1e23483:6:72504693').to_h["results"]
   @usatoday = HTTParty.get('http://api.usatoday.com/open/articles/topnews/home?count=10&days=1&page=1&encoding=json&api_key=w8g6c8xmqhysh47tejek3yce')
   @npr = HTTParty.get('https://api.npr.org/query?id=1056&fields=title,summary&output=JSON&apiKey=MDE5ODgxNTI1MDE0MzY5MTI3NDRkOWNhNQ001').to_s
   @nprjson = JSON.parse(@npr)
   @yt = HTTParty.get('https://www.googleapis.com/youtube/v3/videos?part=player&chart=mostPopular&maxResults=10&key=AIzaSyB_6J2pFU_GMynlahPl60VBl-3gur1ZipI').to_h
   @imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => headers)
end
end
