class SoundcloudApi

def self.soundcloudwidget
@sounds = []
spull = HTTParty.get('https://api-v2.soundcloud.com/explore/pop?limit=10&offset=0&client_id='+ENV['SoundCloudKey'])
sclient = SoundCloud.new(:client_id => ENV['SoundCloudKey'])
spull["tracks"].each do |x|
track_url = x['permalink_url']
embed_info = sclient.get('/oembed', :url => track_url)
@sounds.push( embed_info['html'] )
end

return @sounds

end
end
