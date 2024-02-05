# @param {String} s
# @return {String}
def longest_palindrome(s)
    start, finish = 0, 0
    for i in 0...s.length
        odd_pal = expand_around_center(s, i, i)
        even_pal = expand_around_center(s, i, i + 1)
        length = [odd_pal, even_pal].max
        if length > finish - start
            start = i - (length - 1) / 2
            finish = i + length / 2
        end
    end
    return s[start..finish]
end

def expand_around_center(s, left, right)
    while left >= 0 && right < s.length && s[left] == s[right]
        right += 1
        left -= 1
    end
    return right - left - 1
end
