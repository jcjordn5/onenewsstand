class WelcomeController < ApplicationController
  class TwitterApi

  def self.trending_tweets
      client.trends(id=1, options = {})
  end

  def self.our_public_tweets
      client.user_timeline("BBCNews", count: 1, exclude_replies: true, include_rts: false)
  end


  def self.client
  @client ||= Twitter::REST::Client.new do |config|
    config.consumer_key        = "VfUgu5BvtP5rb9DJoRet03E7L"
    config.consumer_secret     = "RL7dc2RvfjicxfWPvPnkpNszUxZ4wINLWEJ5ufsYSVhrdKTKGj"
      end
    end
  end
    class SoundcloudApi

        def self.soundcloudwidget
        @sounds = []
        spull = HTTParty.get('https://api-v2.soundcloud.com/explore/pop?limit=2&offset=0&client_id=a94c27c1b7b5fbc10ddf13f53d57fbea')
        sclient = SoundCloud.new(:client_id => 'a94c27c1b7b5fbc10ddf13f53d57fbea')
        spull["tracks"].each do |x|
        track_url = x['permalink_url']
        embed_info = sclient.get('/oembed', :url => track_url)
        @sounds.push( embed_info['html'] )
        end

        return @sounds

      end
  end
  def index
  @imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => {'Authorization' => 'Client-ID ' + '128a302fdff45ec'})
  #headers = { Authorization: "Client-ID 449d68ec45b2592"}
  #@imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => headers)

  # @youtube = HTTParty.get('https://www.googleapis.com/youtube/v3/videos?part=player&chart=mostPopular&maxResults=3&key=AIzaSyB_6J2pFU_GMynlahPl60VBl-3gur1ZipI').to_h
  @bing = Bing.all
  @guardian = Guardian.all
  @nyt = Nyt.all
  @usa = Usa.all
  @npr = Npr.all
  @youtube = Youtube.all
  @soundc = Soundc.all
  @twit = Twit.all
  @instagram = Instagram.all

end

end
