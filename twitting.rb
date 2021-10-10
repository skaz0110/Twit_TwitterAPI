require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ""
  config.consumer_secret     = ""
  config.access_token        = ""
  config.access_token_secret = ""
end

p "ツイートしますか？ y/n"
yesOrNo = gets
if yesOrNo == "y\n"
  twitt = gets
  client.update(twitt)
  p "ツイート完了"
else  p "ツイートを中断"  
end