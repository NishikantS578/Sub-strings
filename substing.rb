dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string,substring_dictionary)
  hash = {}
  substring_dictionary.each do |substring|
    count = 0
    found = true
    index = -1
    while found do
      index = string.index(substring,index+1)
      if index
        count += 1
      else
        found = false
      end
    end
    if count > 0
      hash[substring] = count
    end
  end
  puts hash
end

substrings("Howdy partner, sit down! How's it going?".downcase, dictionary)