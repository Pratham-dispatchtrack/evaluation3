# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'
class Cricket
  def initialize(path)
    @path = path
  end
  def process_data
    @data = CSV.read(@path, headers: true).map(&:to_h).map do |row|
      {
        'date' => row['date'],
        'location' => row['location'],
        'team1_id' => row['team1_id'].to_i,
        'team2_id' => row['team2_id'].to_i,
        'score_team1' => row['score_team1'].to_i,
        'score_team2' => row['score_team2'].to_i
      }
    end
    @data
  end
  def push_data
    @data = process_data
    @data.each do |player|
      Player.create(date: player['date'],location: player['location'], team1_id: player['team1_id'], team2_id: player['team2_id'], score_team1: player['score_team1'], score_team2: player['score_team1'])
    end
  end
end
# Usage
cricket = Cricket.new('db/matches.csv')
cricket.push_data
