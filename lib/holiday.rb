require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array
  
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  final_array = [ ]
  holiday_hash[:winter].values.each do |item|
    item.each do |thing|
      final_array << thing
    end
  end
  final_array
end

def all_supplies_in_holidays(holiday_hash)
  seasons_array = []
  final_seasons_array = []
  
  holiday_array = []
  #binding.pry
  
  holiday_hash.each do |season|
    seasons_array << season[0].to_s.scan(/[a-z]/)
  end
  
  holiday_hash.values.each do |season|
    season.each do |holiday|
      holiday.each do |item|
        holiday_array << item
      end
    end
  
  seasons_array.each do |item|
    final_seasons_array << item.join.capitalize
  end
  
  #puts "#{final_seasons_array[0]}:"
  #puts holiday_array
  
  #while x < final_seasons_array.length
  puts "#{final_seasons_array[0]}:"
  puts "  #{holiday_array[0]}: #{holiday_array[0]}"
  
  
  
end
end
  
  
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  #puts "season"
  #puts "  #{holiday_1}: #{supply_array_1}"
  #puts "  #{holiday_2}: #{supply_array_2}

#def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

#end
#end
