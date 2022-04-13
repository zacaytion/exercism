"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    return length(unique(split(lowercase(input), " ")))
end

ispangram("abcdefghijklmnopqrstuvwxyz")
