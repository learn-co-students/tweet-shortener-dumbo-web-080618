require 'pry'
def dictionary
  return {
    "hello" => 'hi',
    "to" => 2,
    "two" => 2,
    "too" => 2,
    "for" => 4,
    "four" => 4,
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(string)
  wordsArray = string.split(' ')
  filtered = []
  wordsArray.each do |word|
    dictionaryObj = dictionary()
    if dictionaryObj.has_key?(word.downcase)
      word = dictionaryObj.fetch(word.downcase)
      filtered.push(word)
    else
      filtered.push(word)
    end
  end
  string = filtered.join(' ')
end

def bulk_tweet_shortener(arrayOfTweets)

  arrayOfTweets.each do |tweet|
    puts word_substituter(tweet)
  end

end

def selective_tweet_shortener(tweet)
  shortenedTweets = []

      if tweet.size > 140
        shortenedTweets.push(word_substituter(tweet))
        return shortenedTweets
      end

      return tweet
end

def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    return tweet[0..139]
  end

  return tweet
end
