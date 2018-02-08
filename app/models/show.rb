class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum('rating')
  end

  def self.most_popular_show
    popular = self.where({rating: highest_rating})
    popular[0]
  end

  def self.lowest_rating
    self.minimum('rating')
  end

  def self.least_popular_show
    least_popular = self.where({rating: lowest_rating})
    least_popular[0]
  end

  def self.ratings_sum
    self.sum('rating')
  end

  def self.popular_shows
    self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order("name ASC")
  end


end
