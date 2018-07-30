# Write your code here.

def dictionary
  return {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(tweets)
  tweets = tweets.split(' ')
  substitute = []
  tweets.each do |tweet|
    dictionary.each do |key, val|
      tweet = tweet.replace(val) if tweet.downcase == key
    end
    substitute << tweet
  end
  substitute.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |t|
    puts word_substituter(t)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  end
  return word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0..139]
  end

  return tweet
end
