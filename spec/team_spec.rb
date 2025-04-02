require 'rspec'
require './lib/player'
require './lib/team'
require 'pry'

RSpec.describe Team do
#binding.pry
  before(:each) do
    @team = Team.new("Dodgers", "Los Angeles")
  end

  it 'exists' do
    expect(@team).to be_a(Team)
  end

  it 'has a first_name' do 
    expect(@team.first_name).to eq("Los Angeles")
  end
  
  it 'has a last_name' do
    expect(@team.last_name).to eq("Dodgers")
  end

  it 'starts with an empty roster' do
    expect(@team.roster).to eq([])
  end

  it 'starts with 0 players' do
    expect(@team.player_count).to eq(0)
  end

  it 'adds new players' do
    @player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    @player_2 = Player.new("Kenny DeNunez", 500000, 24)

    @team.add_player(@player_1)
    @team.add_player(@player_2)
  end
 
  it 'updates roster and player count' do
    @team.roster
    @team.player_count
  end
  
 






end