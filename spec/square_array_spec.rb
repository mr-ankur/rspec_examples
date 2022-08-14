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

require 'square_array'

describe SquareArray do
    context "With array input" do
        it "should detect when array input is valid" do
            sa = SquareArray.new
            array = ["ABCD","BQDP","CDSZ","DPZX"]
            expect(sa.valid_array? array).to be true
        end

        it "should detect when array input is invalid" do
            sa = SquareArray.new
            array = ["ABCD","BQDP","CDSZ","DPMX"]
            expect(sa.valid_array? array).to be false
        end
    end
end