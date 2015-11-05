class Viewing < ActiveRecord::Base
  belongs_to :movie
  has_and_belongs_to_many :users
end
