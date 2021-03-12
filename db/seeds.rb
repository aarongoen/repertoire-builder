# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do
#     # Piece.create(name: Faker::Music.album, composer: Faker::Music.band, length: rand(1..180), key: Faker::Music.key, period: Faker::Music.genre, like: 'false')
# end

require 'nokogiri'
require 'open-uri'

pieces = [{"url"=>"imslp.org/wiki/Adoration_(Reuchsel,_Maurice)", "name"=>"Adoration", "composer"=>"Reuchsel, Maurice"},
    {"url"=>"imslp.org/wiki/Adorazione_(Caudana,_Federico)", "name"=>"Adorazione", "composer"=>"Caudana, Federico"},
    {"url"=>"imslp.org/wiki/25_Advanced_Pedal_Studies_(Nevin,_Gordon_Balch)",
     "name"=>"25 Advanced Pedal Studies",
     "composer"=>"Nevin, Gordon Balch"},
    {"url"=>"imslp.org/wiki/Advent_%27First_Religious_Suite_for_Organ%27_(Yon,_Pietro)",
     "name"=>"Advent 'First Religious Suite for Organ'",
     "composer"=>"Yon, Pietro"},
    {"url"=>"imslp.org/wiki/Advent_and_Christmas_(Titcomb,_Everett)",
     "name"=>"Advent and Christmas",
     "composer"=>"Titcomb, Everett"},
    {"url"=>"imslp.org/wiki/Advent_to_Whitsuntide_(Sowerby,_Leo)", "name"=>"Advent to Whitsuntide", "composer"=>"Sowerby, Leo"},
    {"url"=>"imslp.org/wiki/Advent,_Op.28_(Matthison-Hansen,_Gottfred)",
     "name"=>"Advent, Op.28",
     "composer"=>"Matthison-Hansen, Gottfred"},
    {"url"=>"imslp.org/wiki/Agilmente_(%C5%A0kop,_V%C3%A1clav_Felix)", "name"=>"Agilmente", "composer"=>"Škop, Václav Felix"},
    {"url"=>"imslp.org/wiki/Agnus_Dei_(Redford,_John)", "name"=>"Agnus Dei", "composer"=>"Redford, John"},
    {"url"=>"imslp.org/wiki/Agnus_(Josquin_Desprez)", "name"=>"Agnus", "composer"=>"Josquin Desprez"}]

def seed_pieces(pieces) 
    pieces.each do |p|
        Piece.create p
    end
end

# binding.pry

# for_organ_page = open('https://imslp.org/index.php?title=Category:For_organ&transclude=Template:Catintro')
# page_a = open('https://imslp.org/wiki/Category:For_organ#fcfrom:a')
# doc = Nokogiri::HTML(page_a) 

#     rand_letter = ('a'..'z').to_a.sample
#     create_page_link = "imslp.org/wiki/Category:For_organ#fcfrom:#{rand_letter}"

# def create_page_link(letter)
#     "imslp.org/wiki/Category:For_organ#fcfrom:#{letter}"
# end

# def get_links_to_each_letter_page
#     alphabet = ('A'..'Z').to_a
#     page_array = alphabet.map{|l| create_link(l)}
# end

# def generate_links(doc)
#     pieces = doc.css('#catcolp1-1 > ul li a').to_a
#     pieces.map do |pc|
#     "imslp.org" + "#{pc.attribute('href').value}"
#     end
# end

# links = generate_links(doc)

# def parse_title_and_composer(title_and_composer)
#     separated = title_and_composer.map{|p| p.split(/[(]+/)}
#     title = separated[0][0].delete_suffix(' ')
#     composer = separated[1][1].delete_suffix(')')
# end

# parse_title_and_composer

# def title_and_composer(doc)
#     pieces = []# declare a variable and set it equal to an empty array
#     page_pieces = doc.css('#catcolp1-1 > ul li a').to_a
#     page_pieces.each_with_index do |piece, i|
        # binding.pry
        # create a variable and set it equal to an empty hash
        # piece = {}
        # title_and_composer = doc.css('#catcolp1-1 > ul li a')[i].attr('title').split(/[(]+/)
        # you're going to split the composer and the name of the pice into two different sections and set them equal to variables 
#         piece_url = "imslp.org" + "#{doc.css('#catcolp1-1 > ul li a')[i].attribute('href').value}"
#         piece["url"] = piece_url

#         piece["name"] = title_and_composer[0].delete_suffix(' ')

#         piece["composer"] = title_and_composer[1].delete_suffix(')')
        
#         piece_doc = Nokogiri::HTML(piece_url)  

#         def get_img(piece["url"])
#             piece_doc = Nokogiri::HTML(piece_url)  
# binding.pry
#         end
#         piece["img"] = get_img

#         pieces << piece
#         binding.pry
#     end
#     #return that array 
#     binding.pry
#     return pieces
# end

# title_and_composer = title_and_composer(doc)

# def parse_title(title_and_composer)
#     separated = title_and_composer.map do |p| 
#         p.split(/[(]+/)
#     title = separated[0][0].delete_suffix(' ')
#     end
# end


# binding.pry

# def random_page_pieces(doc)
#     pieces = doc.css('#catcolp1-1 > ul li a').to_a
#     pieces.shuffle.first(10)
# end

# ten_random_page_pieces = random_page_pieces(doc)

# def add_pieces_to_db 
#     ten_random_page_pieces
# end


# text of links: doc.css('#catcolp1-1 > ul li a').text
# suffix of link: doc.css('#catcolp1-1 > ul li a')[0].attr('href') => "/wiki/Adoration_(Reuchsel,_Maurice)"
# text of title & composer = doc.css('#catcolp1-1 > ul li a')[0].attr('title')
#pieces = doc.css('#catcolp1-1 > ul li a').to_a

# doc.xpath(`#catcolp1-1 > ul > li:nth-child${num} > span > a`).each do |el|
#     p [el.attributes['class'].value, el.children[0].text]
#   end


# def select_25_random_pieces_on_page(array)
#     link = doc.css('a.categorypagelink')[num]
#     random_piece_index.map {|num| `link${num}`}

# end


