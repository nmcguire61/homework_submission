class Movie < ActiveRecord::Base
  has_many :viewings
end
