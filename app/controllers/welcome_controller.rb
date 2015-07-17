class WelcomeController < ApplicationController

  def index
  @imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => {'Authorization' => 'Client-ID ' + '128a302fdff45ec'})
  #headers = { Authorization: "Client-ID 449d68ec45b2592"}
  #@imgur = HTTParty.get('https://api.imgur.com/3/gallery.json', :header => headers)

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
