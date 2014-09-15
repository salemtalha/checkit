require 'embedly'
require 'json'

module Embed
  def Embed.get_embed(url)
    embedly_api = Embedly::API.new :key => 'e8d27d76418646eba932029311f351f9', :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)'
    
    obj = embedly_api.oembed :url => url 
    return obj[0]
  end
end
