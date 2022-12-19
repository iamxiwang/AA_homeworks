json.partial! "api/parties/party", party: @party
json.guests @party.guests.map do |guest|
    json.name guest.name
    json.gifts guest.gifts.map do |gift|
    # {|gift| gift.title}
        if gift.party_id == @party.id
            json.merge! gift.title
        end
    end
end
