class Stop < ActiveRecord::Base

  validates :line_id, uniqueness: { scope: :station_id,
    message: "Stop already exists!"}

  belongs_to :line
  belongs_to :station
end
