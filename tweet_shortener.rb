require 'pry'
def dictionary
  dictionary =  {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", 
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
 new_word = string.split
 keys = dictionary.keys
   new_word.map! do |word|
      if keys.include?(word.downcase)
        word = dictionary[word.downcase]
      else 
        word = word
    end
  end
  new_word.join(" ")
end



def bulk_tweet_shortener(tweets)
  
  tweets.each do |tweet|
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
 s_tweet = word_substituter(tweet)
  if s_tweet.length > 140 
    tweet[0..136] + "..."
  else
    tweet
  end
end
  
  


