# => write a program to which verify where the array is valid or not
# => array will be fix with 4 strings in it.
# => all strings will contain 4 characters in it.
# Array is valid if:
# 1. all the first characters of the all strings equals to first string
# 2. all the Second characters of the all strings equals to second string
# 3. all the Third characters of the all strings equals to third string
# 4. all the Fourth characters of the all strings equals to fourth string

# Example:

# "ABCD"
# "BQDP"
# "CDSZ"
# "DPZX"

# Input:

# array = ["ABCD","BQDP","CDSZ","DPZX"]

class SquareArray
    def valid_array?(array)
        return false if array.count != 4
        words = array.select { |x| x.length != 4 }
        return false if words.count > 0
        array.each_with_index do |word, i|
            new_word = array.map { |x| x[i]}.join
            return false if new_word != array[i]
        end
        true
    end
end