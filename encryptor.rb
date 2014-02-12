class Encryptor

  def initialize(default_rotation = 13)
    @rotation = default_rotation
  end

  def cipher
    # {
    #   'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
    #   'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    #   'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    #   'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    #   'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    #   'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    #   'y' => 'l', 'z' => 'm'
    # }
    a=('a'..'z').to_a
    b=a.rotate(@rotation) #b=a.rotate(13)
    #c=a.zip(b)
    Hash[a.zip(b)]
    #Hash[c]
  end

  def decipher
    a=('a'..'z').to_a
    b=a.rotate(@rotation)  #could have used -@rotation and not switch the b and a
    Hash[b.zip(a)]
  end


  def encrypt_letter(letter)
    cipher[letter.downcase]
  end

  def encrypt(unencrypted_string)
    letters = unencrypted_string.split("")
    letters.collect { |letter| encrypt_letter(letter) }.join
  end
  
  def decrypt_letter(letter)
    decipher[letter.downcase]
  end
  
 def decrypt(encrypted_string)
    #split the string into an array of letters
    #iterate over each letter
    #decrypt_letter which would rotate negative @rotation
    #return new array
    #join the array

    letters = encrypted_string.split("")
    letters.collect {|letter| decrypt_letter(letter)}.join

  end


end

#1. create a txt file with a secret word
#2.encrypt that file and save the file with the new encrypted word
#3. drcyptt that file and re-save tthe file with the secret word




# def decrypt(string)
  #   result.split("").collect {|letter| encrypt_letter(letter)}.join


# class Encryptor

#   def cipher
#     {
#       'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
#       'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
#       'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
#       'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
#       'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
#       'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
#       'y' => 'l', 'z' => 'm'
#     }
#   end

#   def encrypt_letter(letter)
#     cipher[letter.downcase]
#   end

#   def encrypt(string)
#     letters = string.split("")
#     result = []
#     letters.each do |letter|
#       encrypted_letter = encrypt_letter(letter) 
#       result.push(encrypted_letter)
#     end

#   result.join
#   end

# end






# puts "Your Message:"
# gets.chomp.downcase

# if 

# @name instance variable n local variable
#cipher = instance class = constance

#encrypt is instance method..can run instance inside of instance