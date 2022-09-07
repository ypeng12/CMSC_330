
class PhoneBook

   
    def initialize
        @@phonebook = Hash.new
        @@hashfake = Hash.new 
       
    end

    def add(name, number, is_listed)
        
        return false unless number.match('[0-9]{3}-[0-9]{3}-[0-9]{4}') || @@phonebook.nil?

        if is_listed == false
            if  @@hashfake.has_key?(name) == false  
                @@hashfake.store(name,number)
                return  true
            else
                return false
            end
        end

        if is_listed == true
            if @@phonebook.has_value?(number) == false && @@phonebook.has_key?(name) == false
                @@hashfake.store(name,number)
                @@phonebook.store(name,number)
                return true        
            else
                return false
            end
        end

        

    end

    def lookup(name)
        
        if @@phonebook.has_key?(name) == false 

            return nil
        else
            return @@phonebook.fetch(name)
        end

    end

    def lookupByNum(number)

        if @@phonebook.has_value?(number) == false 

            return nil
        else
            return @@phonebook.key(number)
        end
    end

    def namesByAc(areacode)
        array = Array.new  

        @@hashfake.each do |key, value|
            
            if value.start_with?(areacode)
                array << key
            end
        end
        return array

    end
end