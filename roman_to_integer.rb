# @param {String} s
# @return {Integer}
def roman_to_int(s)

    value = 0
    ind = 0 

    val_hash = {
        "I": 1, 
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    }
    
    while ind < s.length
        case s[ind]
        when "M"
            value += 1000
        when "D"
            value += 500
        when "C"
            if s[ind + 1] == "M"
                value += 900
                ind += 1
            elsif s[ind + 1] == "D"
                value += 400
                ind += 1
            else
                value += 100
            end
        when "L"
            value += 50
        when "X"
            if s[ind + 1] == "C"
                value += 90
                ind += 1
            elsif s[ind + 1] == "L"
                value += 40
                ind += 1
            else
                value += 10
            end
        when "V"
            value += 5
        when "I"
            if s[ind + 1] == "X"
                value += 9
                ind += 1
            elsif s[ind + 1] == "V"
                value += 4
                ind += 1
            else
                value += 1
            end
            
        end

        ind += 1
    end

    value
end
