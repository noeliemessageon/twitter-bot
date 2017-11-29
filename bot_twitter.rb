#!/usr/bin/env ruby

require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "XObGiKxTu3nNjLn7SqT48fQKT"
  config.consumer_secret     = "rT0fvhnEmEPyJYYiyoI3EFYSzjaRJIKpoVgAY04C7xEu5GCfQO"
  config.access_token        = "933684257817587712-4kSuVMIUa7kJElV4f7YLbtHmcP5lK5k"
  config.access_token_secret = "MI9zBGSbEIQCdICZp8MQnYQ05AvjMWEjnpRMGR6pS0B8B"
end

client.search("Fnac").take(50).each do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
  client.favorite(tweet)
 client.update_with_media("@#{tweet.user.screen_name} Bénéficiez de 20€ dès 80€ de commande grace à ce code TLS2080 ", File.new("/Users/apple/Downloads/24201410_10212538244964454_1998996158_o.png"))
  sleep 900
end

