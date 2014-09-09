require 'rails_helper'

describe Stop do
  it "should require that a station_id and line_id combination be unique" do
    Stop.create({line_id: 1, station_id: 1})
    dupe_stop = Stop.new({line_id: 1, station_id: 1})
    expect(dupe_stop.save).to eq false
  end
end
