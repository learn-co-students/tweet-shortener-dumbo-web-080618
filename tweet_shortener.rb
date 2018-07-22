def dictionary
  shortener = {
  "hello" => 'hi',
"to"=> '2', 
"two" => '2', 
"too" => '2', 
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&",
  }
end


def word_substituter(string)
  array = string.split(" ")
  for i in 0..array.length-1
    if dictionary.has_key?(array[i].downcase)
      array[i] = dictionary[array[i].downcase]
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened = selective_tweet_shortener(tweet)
  if shortened.length > 140
    even_shorter = "#{shortened[0..136]}..."
  else shortened
end
end
