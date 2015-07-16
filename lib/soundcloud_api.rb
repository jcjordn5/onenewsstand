class SoundcloudApi

def self.sounds
sclient = SoundCloud.new(:client_id => 'a94c27c1b7b5fbc10ddf13f53d57fbea')
tracks = sclient.get('/tracks', :limit => 100, :order => 'playback_count')
return tracks
end


def self.soundcloudwidget

@sounds = []

spull = HTTParty.get('https://api-v2.soundcloud.com/explore/pop?limit=10&offset=0&client_id=a94c27c1b7b5fbc10ddf13f53d57fbea')


sclient = SoundCloud.new(:client_id => 'a94c27c1b7b5fbc10ddf13f53d57fbea')

spull["tracks"].each do |x|
track_url = x['permalink_url']
embed_info = sclient.get('/oembed', :url => track_url)

@sounds.push( embed_info['html'] )
end

return @sounds

end
end
