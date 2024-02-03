# @param {String} s
# @return {Boolean}
def is_valid(s)
    opening_list = ["(", "[", "{"]
    return false if !opening_list.include?(s.chars.first) || s.chars.empty?

    chars_match = {
        ")": "(",
        "]": "[",
        "}": "{"
    }
    opening_brackets_stack = []

    s.chars.each do |char|
        if opening_list.include?(char)
            opening_brackets_stack << char
        else
            return false if opening_brackets_stack.pop != chars_match[char.to_sym]
        end
    end
    opening_brackets_stack.empty?
end
