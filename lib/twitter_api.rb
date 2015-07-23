class TwitterApi

def self.trending_tweets
    client.trends(id=23424977, options = {})
end

def self.our_public_tweets
    client.user_timeline("BBCNews", count: 1, exclude_replies: true, include_rts: false)
end

def self.client
@client ||= Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TwitterKey']
  config.consumer_secret     = ENV['TwitterSecret']
    end
  end
end
