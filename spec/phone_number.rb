# Write the regular expression in ruby to match phone number like “+XX-XXXXXXXXXX”.
# Ex +89-3426767856, +91-5638238923 (valid)
# Ex +8-3426767856 , "222244448888" (invalid)

class PhoneNumber
    def valid?(number_pattern)
        !!number_pattern.match(/\+\d{2,2}-\d{10,10}$/)
    end
end