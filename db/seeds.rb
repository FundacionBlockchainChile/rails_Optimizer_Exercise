# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# se requiere 'open-uri' para solicitar los archivos html
require "nokogiri"
require "open-uri"

teams = [
  ["Atlanta Hawks", "Skyhawk", "Philips Arena"],
  ["Boston Celtics", "Lucky the Leprechaun", "TD Garden"],
  ["Brooklyn Nets", "BrooklyKnight", "Barclays Center"],
  ["Charlotte Hornets", "Hugo the Hornet", "Spectrum Center"],
  ["Chicago Bulls", "Benny the Bull", "United Center"],
  ["Cleveland Cavaliers", "Moondog", "Quicken Loans Arena"],
  ["Dallas Mavericks", "Champ", "American Airlines Center"],
  ["Denver Nuggets", "Rocky the Mountain Lion", "Pepsi Center"],
  ["Detroit Pistons", "Hooper", "The Palace of Auburn Hills"],
  ["Golden State Warriors", "Thunder", "Oracle Arena"],
  ["Houston Rockets", "Clutch", "Toyota Center"],
  ["Indiana Pacers", "Boomer the Panther", "Bankers Life Fieldhouse"],
  ["Los Angeles Clippers", "Chuck", "Staples Center"],
  ["Los Angeles Lakers", "Jack Nicholson", "Staples Center"],
  ["Memphis Grizzlies", "Griz", "FedExForum"],
  ["Miami Heat", "Burnie", "American Airlines Arena"],
  ["Milwaukee Bucks", "Bango", "BMO Harris Bradley Center"],
  ["Minnesota Timberwolves", "Crunch the Wolf", "Target Center"],
  ["New Orleans Pelicans", "Pierre the Pelican", "Smoothie King Center"],
  ["New York Knicks", "Spike Lee", "Madison Square Garden"],
  ["Oklahoma City Thunder", "Rumble the Bison", "Chesapeake Energy Arena"],
  ["Orlando Magic", "Stuff the Magic Dragon", "Amway Center"],
  ["Philadelphia 76ers", "Franklin the Dog", "Wells Fargo Center Philadelphia"],
  ["Phoenix Suns", "The Suns Gorilla", "Talking Stick Resort Arena"],
  ["Portland Trail Blazers", "Blaze the Trail Cat", "Moda Center"],
  ["Sacramento Kings", "Slamson the Lion", "Golden 1 Center"],
  ["San Antonio Spurs", "The Coyote", "AT&T Center"],
  ["Toronto Raptors", "Raptor", "Air Canada Centre"],
  ["Utah Jazz", "Jazz Bear", "Vivint Smart Home Arena"],
  ["Washington Wizards", "G. Wiz", "Verizon Center"]
]
# Aquí vamos a utilizar la gema Nokogiri (ya viene con Rails), para obtener del sitio web ESPN la lista de jugadores.
# Para más información sobre Nokogiri, puede consultar la documentación o visitar http://www.nokogiri.org/
atlanta_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/atl/atlanta-hawks")).css('.inline')
boston_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/bos/boston-celtics")).css('.inline')
brooklyn_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/bkn/brooklyn-nets")).css('.inline')
charlotte_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/cha/charlotte-hornets")).css('.inline')
chicago_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/chi/chicago-bulls")).css('.inline')
cleveland_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/cle/cleveland-cavaliers")).css('.inline')
dallas_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/dal/dallas-mavericks")).css('.inline')
denver_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/den/denver-nuggets")).css('.inline')
detroit_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/det/detroit-pistons")).css('.inline')
warriors_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/gs/golden-state-warriors")).css('.inline')
houston_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/hou/houston-rockets")).css('.inline')
indiana_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/ind/indiana-pacers")).css('.inline')
clippers_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/lac/la-clippers")).css('.inline')
lakers_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/lal/los-angeles-lakers")).css('.inline')
memphis_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/mem/memphis-grizzlies")).css('.inline')
miami_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/mia/miami-heat")).css('.inline')
milwaukee_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/mil/milwaukee-bucks")).css('.inline')
minnesota_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/min/minnesota-timberwolves")).css('.inline')
nola_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/no/new-orleans-pelicans")).css('.inline')
knicks_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/ny/new-york-knicks")).css('.inline')
okc_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/okc/oklahoma-city-thunder")).css('.inline')
orlando_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/orl/orlando-magic")).css('.inline')
phili_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/phi/philadelphia-76ers")).css('.inline')
phoenix_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/phx/phoenix-suns")).css('.inline')
portland_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/por/portland-trail-blazers")).css('.inline')
sacramento_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/sac/sacramento-kings")).css('.inline')
spurs_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/sa/san-antonio-spurs")).css('.inline')
toronto_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/tor/toronto-raptors")).css('.inline')
utah_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/utah/utah-jazz")).css('.inline')
washington_players = Nokogiri::HTML(URI.open("http://www.espn.com/nba/team/roster/_/name/wsh/washington-wizards")).css('.inline')

jugadores = [
  atlanta_players,
  boston_players,
  brooklyn_players,
  charlotte_players,
  chicago_players,
  cleveland_players,
  dallas_players,
  denver_players,
  detroit_players,
  warriors_players,
  houston_players,
  indiana_players,
  clippers_players,
  lakers_players,
  memphis_players,
  miami_players,
  milwaukee_players,
  minnesota_players,
  nola_players,
  knicks_players,
  okc_players,
  orlando_players,
  phili_players,
  phoenix_players,
  portland_players,
  sacramento_players,
  spurs_players,
  toronto_players,
  utah_players,
  washington_players
]

jugadores.each_with_index do |nomina, index|
  # Create Team
  teamCreated = Equipo.create(nombre: teams[index][0], mascota: teams[index][1], estadio: teams[index][2])

  p teamCreated
  
  # Create players of Team
  nomina.each do |jugador|
    name = jugador.css('a').text
    Jugador.create(nombre: name, equipo_id: teamCreated.id) if name.length != 0
    p name if name.length != 0
  end

end 

# jugadores = Jugador.limit(10).order("RAND()")
# jugadores.each do |jugador|
#   puts jugador.equipo.estadio
# end


