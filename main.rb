require 'sinatra'

get '/' do
  erb:index
end

post '/number' do
  @team_number = params[:team_number]
  erb:index
end

post '/lottery' do
  @team_number = params[:team_number].to_i
  @readers = []
  @team_number.times { |i|
    @readers[i] = params[:reader][i]
  }
  @sum = params[:sum]
  @lottery = []
  for i in 0..3
    tmp = []
    params[:grade][i].to_i.times { |j|
      tmp.push(j%@team_number+1)
    }
    @lottery.push(tmp)
  end
  erb:lottery
end
