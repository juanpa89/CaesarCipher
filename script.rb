require 'pry'

def caesar_cipher (string, number) 
    alphabet_lower = "abcdefghijklmnopqrstuvwxyz"
    alphabet_upper = alphabet_lower.upcase

    lower_array = alphabet_lower.split('')
    upper_array = alphabet_upper.split('')

    user_array = string.split('')

    new_array = []

    user_array.map { |i|

    if alphabet_upper.include?(i)
        if alphabet_upper.index(i) + number > 25
            new_array.push alphabet_upper[alphabet_upper.index(i) + number - 26]
        else
            new_array.push alphabet_upper[alphabet_upper.index(i) + number]
        end

    elsif alphabet_lower.include?(i)
        if alphabet_lower.index(i) + number > 25
            new_array.push alphabet_lower[alphabet_lower.index(i) + number - 26]
        else
            new_array.push alphabet_lower[alphabet_lower.index(i) + number]
        end
    else
        new_array.push i
    end
    }
    return new_array.join

end



puts caesar_cipher("What a string!", 5)  #"Bmfy f xywnsl!"

