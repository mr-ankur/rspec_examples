# Write the regular expression in ruby to match phone number like “+XX-XXXXXXXXXX”.
# Ex +89-3426767856, +91-5638238923 (valid)
# Ex +8-3426767856 , "222244448888" (invalid)

require 'phone_number'

describe PhoneNumber do
    context "when phone number pattern input given" do
        it "should detect phone number is valid" do
            pn = PhoneNumber.new
            number_pattern = "+91-7777888899"
            expect(pn.valid? number_pattern).to be true
        end

        it "should detect phone number is invalid" do
            pn = PhoneNumber.new
            number_pattern = "+9-7777888899"
            expect(pn.valid? number_pattern).to be false
        end
    end
end