class StringAnalyzer
    def had_vowels?(str)
        !!(str =~ /[aeiou]+/i)
    end
end
