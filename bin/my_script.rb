require 'addressable/uri'
require 'rest-client'

def get_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3'
  ).to_s

  puts RestClient.patch(url, {user: {name: 'Theo'}})
end

begin
  get_user
rescue => e
  puts e
end
