class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    binding.irb
    return if tweet.is_published?

    #someones reschedules a tweet to the future
    return if tweet.publish_at > Time.current
    tweet.publish_to_twitter!
    # Do something later
  end
end
