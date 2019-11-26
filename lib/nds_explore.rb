$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
def pretty_print_nds(nds)
  require 'pp'

  return pp nds
  # Change the code below to pretty print the nds with pp
  nil
end
puts pretty_print_nds(directors_database)

def print_first_directors_movie_titles
  row_index = 0
  while row_index < directors_database.count do
    column_index = 0
    while column_index < directors_database[row_index].count do
      return directors_database[row_index][column_index]
      column_index += 1
    end
    row_index +=1
  end
end
