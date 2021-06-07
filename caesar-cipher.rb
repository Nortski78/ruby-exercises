def caesar(string, shift)
    string = string.bytes
    string.map! do | ascii |
      if (ascii.between?(97, 122))
        (ascii - shift) < 97 ? ascii - shift + 26 : ascii - shift
        elsif (ascii.between?(65, 90))
          (ascii - shift) < 65 ? ascii - shift + 26 : ascii - shift
      end
    end
    string = string.pack('c*')
    p string
 end