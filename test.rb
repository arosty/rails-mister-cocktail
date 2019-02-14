def new_method
    cocktails_starting_b = []
    cocktails = ['boij', 'asd', 'eda', 'basd']
    cocktails.each do |cocktail|
      #filter via cocktail.name to find cocktails starting with b
      if cocktail[0] == 'b'
        cocktails_starting_b<< cocktail
      end      
    end
    return cocktails_starting_b
  end 

def new
    a = new_method
    b = a * 10
    b
    puts 'here'
end

new