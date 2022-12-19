# json.name @guest.name
# json.age @guest.age
# json.favorite_color @guest.favorite_color

json.extract! @guest, :name, :age, :favorite_color
json.gifts do 
    @guest.gifts.each do |gift|
        json.extract! gift, :title, :description
        json.party gift.party.name
    end
end
