require 'sqlite3'
require 'faker'

create_command = <<-CREATION
 CREATE TABLE IF NOT EXISTS fortunes(
  id INTEGER PRIMARY KEY,
  name varchar(255),
  quoted text(500)
  );
CREATION

find_them = <<-FINDTHEM
  select name, quoted from fortunes;
FINDTHEM


def make_the_db(my_create_command)
  wi_db = SQLite3::Database.new("wisdom_and_inspiration.db") do |db|
    db.execute(my_create_command)
  end
  wi_db
end

def get_count(db)
  n = db.execute("select count(*) from fortunes")
  n[0][0].nil? ? 0 : n[0][0]
end
def get_fortune(db, sql)
  results = db.execute(sql)
end


def get_quotes_from_file(file, database)
  File.readlines(file).each do |line|
    my_line = line.split('|')
    author = my_line[0]
    quoted= my_line[1]
    my_str = "INSERT INTO fortunes(name, quoted) VALUES(\'#{author}\', \'#{quoted}\');"
    #p my_str
    if (quoted != '' and quoted != "") 
      database.execute(my_str)
    end
  end
end
def display_fortune(database, sql_to_get_all_quotes)
  results = get_fortune(database, sql_to_get_all_quotes)
  total_number_of_quotes = results.length
  random_index = rand(total_number_of_quotes)
  quotation = results[random_index]
  puts "#{quotation.at(1)}"
  puts " -- #{quotation.at(0)} --"
end



wi_db = SQLite3::Database.new("wisdom_and_inspiration.db")
wi_db.execute(create_command)

file='sample.txt'
get_quotes_from_file('sample.txt', wi_db)
display_fortune(wi_db, find_them)

# File.readlines(file).each do |line|
#   my_line = line.split('|')
#   author = my_line[0]
#   quoted= my_line[1]
#   my_str = "INSERT INTO fortunes(name, quoted) VALUES(\'#{author}\', \'#{quoted}\');"
#   #p my_str
#   if (quoted != '' and quoted != "") 
#     wi_db.execute(my_str)
#   end
# end




