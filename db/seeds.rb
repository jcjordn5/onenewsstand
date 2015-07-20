# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@nyt = HTTParty.get('http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/1.json?api-key=30ffb766789e445b73dffdb5f1e23483:6:72504693').to_h["results"]
@nyt.each do |x|
Nyt.create(url: x['url'], title: x['title'], abstract: x['abstract'], published_date: ['published_date'])
end

@guardian = HTTParty.get('https://content.guardianapis.com/search?q=politics&api-key=dc2tmawrmyg2xesbwr6q68d4').to_h["response"]["results"]
@guardian.each do |x|
Guardian.create(weburl: x['webUrl'], webtitle: x['webTitle'], webPublicationDate: x['webPublicationDate'])
end

@npr = JSON.parse(HTTParty.get('https://api.npr.org/query?id=1056&fields=title,summary&output=JSON&apiKey=MDE5ODgxNTI1MDE0MzY5MTI3NDRkOWNhNQ001').to_s)['list']['story']
@npr.each do |x|
Npr.create(link: x['link'][2]['$text'], title: x['title']['$text'], teaser: x['teaser']["$text"])
end

@usa = HTTParty.get('http://api.usatoday.com/open/articles/topnews/home?count=10&days=1&page=1&encoding=json&api_key=w8g6c8xmqhysh47tejek3yce')
@usa['stories'].each do |x|
Usa.create(link: x['link'], title: x['title'], description: x['description'])
end

@youtube = HTTParty.get('https://www.googleapis.com/youtube/v3/videos?part=player&chart=mostPopular&maxResults=7&key=AIzaSyB_6J2pFU_GMynlahPl60VBl-3gur1ZipI').to_h
@youtube['items'].each do |x|
Youtube.create(youtubeid: x['id'], title: x['title'])
end

@instagram = HTTParty.get('https://api.instagram.com/v1/media/popular?count=12&client_id=1215ea56756e4a6eb95a882e1af70efb')
@instagram['data'].each do |x|
Instagram.create(url: x['images']['standard_resolution']['url'], username: x['user']['username'], description: x['tags'])
end

@bing = HTTParty.get('https://x:LwN5nacR86QhhCy9b7pPUQVe0qwPmoptGivdKAUbi4o@api.datamarket.azure.com/Bing/Search/v1/News?Query=%27news%27&Market=%27en-US%27&NewsCategory=%27rt_Entertainment%27&NewsSortBy=%27Date%27&$format=json')
@bing['d']['results'].each do |x|
Bing.create(title: x['Title'], url: x['Url'], source: x['Source'], description: x['Description'], date: x['Date'])
end

SoundcloudApi.soundcloudwidget.each do |x|
Soundc.create(embedhtml: x)
end

TwitterApi.trending_tweets.to_h[:trends].each do |x|
Twit.create(url: x[:url], name: x[:name])
end
