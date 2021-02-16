# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.create(player: "Virgil Van Dijk", team: "Liverpool", points: 122, cost: 10.1, position: "Defender")
#User.create(player: "Ngolo Kante", team: "Chelsea", points: 93, cost: 8.5, position: "Midfielder")
#User.create(player: "James Maddison", team: "Leicester", points: 66, cost: 7.5, position: "Midfielder")
#User.create(player: "Harry Kane", team: "Spurs", points: 166, cost: 12.5, position: "Forward")
#User.create(player: "Nicholas Pope", team: "Burnley", points: 88, cost: 6.0, position: "Goalkeeper")
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'fpl.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = User.new
  t.player = row[0] # corresponds to player name.
  t.team = row['team']
  t.points = row['points']
  t.cost = row['decimal']
  t.position = row['position']

  t.save
  puts "#{t.player}, #{t.team} saved"
end

puts "There are now #{User.count} rows in the transactions table"