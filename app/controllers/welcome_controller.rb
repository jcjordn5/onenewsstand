class WelcomeController < ApplicationController



  def index
  @imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => {'Authorization' => 'Client-ID ' + '128a302fdff45ec'})
  #headers = { Authorization: "Client-ID 449d68ec45b2592"}
  #@imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => headers)

  # @youtube = HTTParty.get('https://www.googleapis.com/youtube/v3/videos?part=player&chart=mostPopular&maxResults=3&key=AIzaSyB_6J2pFU_GMynlahPl60VBl-3gur1ZipI').to_h
  @bing = Bing.all
  @youtube = Youtube.all
  @soundc = Soundc.all
  @twit = Twit.all
  @instagram = Instagram.all

end

end
