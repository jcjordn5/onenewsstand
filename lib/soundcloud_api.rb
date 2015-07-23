class SoundcloudApi

require('HTTParty')

def self.soundcloudwidget
@sounds = []
@categories = ['alternative+rock','ambient','classical','country','dance+&+edm','dancehall','deep+house','disco','drum+&+bass','dubstep','electronic','folk+&+singer-songwriter','hip+hop+&+rap','house','indie','jazz+&+blues','latin','metal','piano','pop','r&b+&+soul','reggae','reggaeton','rock','soundtrack','techno','trance','techno','trap','trip+hop','world']
spull = HTTParty.get('https://api-v2.soundcloud.com/explore/'+@categories.sample+'?limit=10&offset=0&client_id='+ENV['SoundCloudKey'])
count = 0
until spull.code == 200 || count < 10
  count +=1
  spull = HTTParty.get('https://api-v2.soundcloud.com/explore/'+@categories.sample+'?limit=10&offset=0&client_id='+ENV['SoundCloudKey'])
end

sclient = SoundCloud.new(:client_id => ENV['SoundCloudKey'])
spull["tracks"].each do |x|
# track_url = x['permalink_url']
# embed_info = sclient.get('/oembed', :url => track_url)
# @sounds.push( embed_info['html'] )
# end
@sounds.push(x['id'])

end

return @sounds

end
end
