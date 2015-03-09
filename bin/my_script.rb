require 'addressable/uri'
require 'rest-client'

def get_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/4/contacts'
  ).to_s

  puts RestClient.get(url)
end

begin
  get_user
rescue => e
  puts e
end
