class Show < ActiveRecord::Base
  # ::highest_rating
  #   returns the TV show with the highest rating (FAILED - 1)
  def self.highest_rating
    self.maximum(:rating)
  end
  # ::most_popular_show
  #   returns the tv show with the highest rating (FAILED - 2)
  def self.most_popular_show
    rating = self.maximum(:rating)
    self.find_by(rating: rating)
  end
  # ::lowest_rating
  #   returns the TV show with the lowest rating (FAILED - 3)
  def self.lowest_rating
    self.minimum(:rating)
  end
  # ::least_popular_show
  #   returns the tv show with the lowest rating (FAILED - 4)
  def self.least_popular_show
    rating = self.minimum(:rating)
    self.find_by(rating: rating)
  end
  # ::ratings_sum
  #   returns the sum of all the ratings of all the tv shows (FAILED - 5)
  def self.ratings_sum
    self.sum(:rating)
  end
  # ::popular_shows
  #   returns an array of all of the shows with a rating above 5 (FAILED - 6)
  def self.popular_shows
    self.where("rating > ?", 5)
  end
  # ::shows_by_alphabetical_order
  #   returns an array of all of the shows, listed in alphabetical order (FAILED - 7)
  def self.shows_by_alphabetical_order
    self.order(:name)
  end
end
