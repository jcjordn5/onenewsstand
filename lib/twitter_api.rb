class TwitterApi

def self.trending_tweets
    client.trends(id=1, options = {})
end

def self.our_public_tweets
    client.user_timeline("BBCNews", count: 1, exclude_replies: true, include_rts: false)
end


def self.client
@client ||= Twitter::REST::Client.new do |config|
  config.consumer_key        = "7sx0NwvxsoXbga1FpiRhvXzKK"
  config.consumer_secret     = "FJvjmzIT5cZSaZYt6ZOtSdIR9d70Gib5B0Vc8QrdIXAsCab7QV"
    end
  end
end
