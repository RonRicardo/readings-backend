require 'rest-client'
  cards_url = "https://tarot.howlcode.com/cards"
  data = JSON.parse(RestClient.get(cards_url))

  data.each do |card|
        fetched_card = Card.new do |c|
          c.name = card['name']
          c.front_image = card['front_image']
          c.short_meaning = card['short_meaning']
          c.full_meaning = card['full_meaning']
          c.up = card['up']
          c.reverse = card['reverse']
        end
          if fetched_card.save
            puts "saved card"
          else
            byebug
            puts "not saved"
          end
      end
