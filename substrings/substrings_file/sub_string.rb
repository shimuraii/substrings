def sub_string(long_string, dictionary)
    h = {}

    splitted_string = long_string.upcase.split(" ")

    dictionary.each do |d_word|
        if long_string.upcase.include?(d_word.upcase)
            h[d_word] = 0
            splitted_string.each do |s_word|
                if s_word.upcase.include?(d_word.upcase)
                    h[d_word] += 1 
                end
            end
        end
    end    
    h
end


