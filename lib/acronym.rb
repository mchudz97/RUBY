class Acronym
    def self.abbreviate(str)
        str.scan(/\b[A-Za-z]/).join.upcase
        
    end
end
