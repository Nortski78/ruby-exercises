def caesar(string, shift)
    
    # Convert to ascii characters and return as an array
    string = string.bytes    
    
    # Process each element in the string array
    string.map! do | ascii |
        # If lower case, process the shift including wrapping
        if (ascii.between?(97, 122))
            if (shift < 0)
                (ascii + shift) < 97 ? ascii + shift + 26 : ascii + shift
            elsif (shift >= 0)
                (ascii + shift) > 122 ? ascii + shift - 26 : ascii + shift
            end
        # If upper case, process the shift including wrapping
        elsif (ascii.between?(65, 90))
            if (shift < 0)
                (ascii + shift) < 65 ? ascii + shift + 26 : ascii + shift
            elsif (shift >= 0)
                (ascii + shift) > 90 ? ascii + shift - 26 : ascii + shift
            end
        else
            # Leave original character as it was
            ascii
        end
    end
    
    # Convert back to a string
    string = string.pack('c*')
    
    p string
end

caesar("What a string!", 5)

