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

Piece.destroy_all
Comment.destroy_all

pieces = [{"url"=>"https://imslp.org/wiki/Adoration_(Reuchsel,_Maurice)", 
        "name"=>"Adoration",
        "composer"=>"Reuchsel, Maurice", 
        "img_url"=>"https://cdn.imslp.org/images/thumb/pdfs/25/c36f96c2c10765cfe4769deef3a7b312ab269be1.png"},
    {"url"=>"https://imslp.org/wiki/Adorazione_(Caudana,_Federico)", 
        "name"=>"Adorazione", 
        "composer"=>"Caudana, Federico", 
        "img_url"=>"https://cdn.imslp.org/images/thumb/pdfs/1a/2be512cb4b8aafaef9d14aee60c750461914e68b.png"},
    {"url"=>"https://imslp.org/wiki/25_Advanced_Pedal_Studies_(Nevin,_Gordon_Balch)",
        "name"=>"25 Advanced Pedal Studies",
        "composer"=>"Nevin, Gordon Balch",
        "img_url"=>"https://imslp.org/images/thumb/8/87/Nevin_25_Advanced_Pedal_Studies.jpg/120px-Nevin_25_Advanced_Pedal_Studies.jpg"},
    {"url"=>"https://imslp.org/wiki/Advent_to_Whitsuntide_(Sowerby,_Leo)", 
        "name"=>"Advent to Whitsuntide", 
        "composer"=>"Sowerby, Leo",
        "img_url"=>"https://imslp.org/images/thumb/c/c5/Titcomb_Advent_and_Christmas.jpg/120px-Titcomb_Advent_and_Christmas.jpg"},
    {"url"=>"https://imslp.org/wiki/Advent,_Op.28_(Matthison-Hansen,_Gottfred)",
        "name"=>"Advent, Op.28",
        "composer"=>"Matthison-Hansen, Gottfred",
        "img_url"=>"https://cdn.imslp.org/images/thumb/pdfs/b9/1440c4c7f645d9877254b3c9c13f06b4e383780f.png"},
    {"url"=>"https://imslp.org/wiki/Agilmente_(%C5%A0kop,_V%C3%A1clav_Felix)", 
        "name"=>"Agilmente", 
        "composer"=>"??kop, V??clav Felix",
        "img_url"=>"https://cdn.imslp.org/images/thumb/pdfs/c6/e754c87bbc250d220c63dc4bf40a28a24fb5b561.png"},
    {"url"=>"https://imslp.org/wiki/Agnus_Dei_(Redford,_John)", 
        "name"=>"Agnus Dei", 
        "composer"=>"Redford, John",
        "img_url"=>"https://cdn.imslp.org/images/thumb/pdfs/ef/6b03f1868d2c97e6c4fc93287caf22cc14610d5c.png"},
    {"url"=>"https://imslp.org/wiki/Agnus_(Josquin_Desprez)", 
        "name"=>"Agnus", 
        "composer"=>"Josquin Desprez",
        "img_url"=>"https://cdn.imslp.org/images/thumb/pdfs/fc/f5457ebde8f99c2eea9e785fe00d74a96289d2b5.png"}]

pieces.each do |p|
    Piece.create p
end

comments = [{"text"=>"This is a good one.", "piece_id"=>"1"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"2"},
            {"text"=>"A bucket list one.", "piece_id"=>"3"},
            {"text"=>"This is a good one.", "piece_id"=>"4"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"5"},
            {"text"=>"A bucket list one.", "piece_id"=>"6"},
            {"text"=>"This is a good one.", "piece_id"=>"7"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"8"},
            {"text"=>"A bucket list one.", "piece_id"=>"9"},
            {"text"=>"This is a good one.", "piece_id"=>"1"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"10"},
            {"text"=>"This is a good one.", "piece_id"=>"11"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"12"},
            {"text"=>"A bucket list one.", "piece_id"=>"13"},
            {"text"=>"This is a good one.", "piece_id"=>"14"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"15"},
            {"text"=>"A bucket list one.", "piece_id"=>"16"},
            {"text"=>"This is a good one.", "piece_id"=>"17"}, 
            {"text"=>"I can't learn this on time.", "piece_id"=>"18"},
            {"text"=>"A bucket list one.", "piece_id"=>"19"},
            {"text"=>"This is a good one.", "piece_id"=>"20"}]

comments.each do |c|
    Comment.create c
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


