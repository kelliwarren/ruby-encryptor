class Encryptor

  def cipher
    {
      'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
      'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
      'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
      'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
      'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
      'y' => 'l', 'z' => 'm'
    }
  end

  def encrypt_letter(letter)
    cipher[letter.downcase]
  end

  def encrypt(string)
    letters = string.split("")
    letters.collect { |letter| encrypt_letter(letter) }.join
  end
  

  
 def decrypt(string)
    encrypt(string)
  end


end




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