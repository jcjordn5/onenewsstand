# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@youtube = HTTParty.get('https://www.googleapis.com/youtube/v3/videos?part=snippet&chart=mostPopular&maxResults=7&key='+ENV['YouTubeKey']).to_h
@youtube['items'].each do |x|
Youtube.create(youtubeid: x['id'], title: x['snippet']['title'])
end

@instagram = HTTParty.get('https://api.instagram.com/v1/media/popular?count=36&client_id='+ENV['InstagramKey'])
@instagram['data'].each do |x|
Instagram.create(url: x['images']['standard_resolution']['url'], username: x['user']['username'], description: x['tags'])
end

@bing = HTTParty.get('https://x:'+ENV['BingKey']+'@api.datamarket.azure.com/Bing/Search/v1/News?Query=%27news%27&Market=%27en-US%27&NewsCategory=%27rt_Entertainment%27&NewsSortBy=%27Date%27&$format=json')
@bing['d']['results'].each do |x|
Bing.create(title: x['Title'], url: x['Url'], source: x['Source'], description: x['Description'], date: x['Date'])
end

SoundcloudApi.soundcloudwidget.each do |x|
Soundc.create(embedhtml: x)
end

TwitterApi.trending_tweets.to_h[:trends].each do |x|
Twit.create(url: x[:url], name: x[:name])
end
