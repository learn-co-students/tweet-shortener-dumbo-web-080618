# Write your code here.
require 'pry'

def dictionary 
  dec_hash= {
    "hello" => 'hi',
    "to" => '2' ,
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  array_temp = tweet.split(" ")
  for i in 0..array_temp.length-1
    if dictionary.has_key?(array_temp[i].downcase)
      array_temp[i] = dictionary[array_temp[i].downcase]
    end
  end
  array_temp.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    tweet[0..136] + "..."
  end
end

#debug techique binding.pry