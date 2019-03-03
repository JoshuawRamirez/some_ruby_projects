def echo(string)
  string
end
def shout(string)
  string.upcase
end

def repeat(string, n=2)
    x = 0
    new_string = ""
    while x < n
      x +=1
      if x < n
        new_string = new_string + string + " "
      else 
        new_string = new_string + string
      end
    end
  return new_string
end

def start_of_word(string, n)
  return string[0..n-1]
end

def first_word(string)
  words = string.split(" ")
  return words[0]
end

def titleize(string)
   words = string.split(" ")
   return words.map{|x| x.capitalize}.join(" ") 
end