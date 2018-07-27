def dictionary 
  return {"hello" => "hi",
              "to" => "2",
              "two" => "2",
              "too" => "2",
              "for" => "4",
              "four" => "4",
              "be" => "b",
              "you" => "u",
              "at" => "@",
              "and" => "&"}
  end

def word_substituter(tweet)
  newtweet = []
  dictionary = dictionary()
  tweet = tweet.split
  tweet.each do |word|
    if dictionary.key?(word.downcase)
      word = dictionary.fetch(word.downcase)
      newtweet.push(word)
    else
      newtweet.push(word)
    end
  end
  newtweet.join(" ")
end


def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    tweet[0..139]
  end
end


