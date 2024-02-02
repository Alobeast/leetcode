# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    start_index     = 0
    end_index       = 0
    longest_substr  = 0
    observed_chars   = {}
    max = 0


    while end_index < s.length
        current_char = s[end_index]
        if observed_chars[current_char] && observed_chars[current_char] >= start_index
            start_index = observed_chars[current_char] + 1
            observed_chars[current_char] = end_index
        else
            observed_chars[current_char] = end_index
            current_substr = s[start_index..end_index]
            current_substr.length
            max = [max, current_substr.length].max

        end
        end_index += 1
    end
    max
end
