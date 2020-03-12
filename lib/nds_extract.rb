$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0 # Total for a director's movies
  movie_index = 0 # Counter for the index of the :movies key in the d_d array
  while movie_index < director_data[:movies].count do # While the movie index is less than the number of movies in the director_data hash do...
	   total += director_data[:movies][movie_index][:worldwide_gross] # Access the gross amount for every movie and increment the total
	   movie_index += 1 # Increment the counter
  end
  total # Returns the total
end

# Write a method that, given an NDS creates a new Hash
def directors_totals(nds)
  directors_totals = {} # Define the final hash for the director's names and totals
  director_id = 0 # Counter variable for the current director (index)
  while director_id < nds.length do # While the current director_id (index) is less than the length of the nds do...
    directors_totals[nds[director_id][:name]] = gross_for_director(nds[director_id]) # Setting the current director's name as the key and
    #the current director's gross total as the value for that key inside the final hash directors_totals
    director_id += 1 # Increment the director index counter
  end
  directors_totals
end
