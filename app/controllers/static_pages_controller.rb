class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
  end
  
  def roll
    # randomly select a player from these options.
    @result = ["Virgil Van Dijk",
               "Jordan Henderson",
               "Alisson Becker",
               "Joe Gomez",
               "Andrew Robertson",
               "Trent Alexander-Arnold",
               "James Milner",
               "Naby Keita",
               "Curtis Jones",
               "Xherdan Shaqiri",
               "Sadio Mane",
               "Mohammed Salah",
               "Roberto Firmino",
               "Diogo Jota",
               "Nathaniel Phillips",
               "Rhys Williams",
               "Ben Davies",
               "Ozan Kabak"].sample
  end
  
end
