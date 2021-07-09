# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#client = Stock.sandbox_api

=begin
client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.stck[:publishable_token],
      secret_token: Rails.application.credentials.stck[:secret_token],
      endpoint: 'https://cloud.iexapis.com/v1'
)

symbols = client.ref_data_symbols()
=end

#iex_client = Stock.iex_api
#symbols = client.ref_data_symbols()
#nas_symbols = symbols.select{|symbol| symbol.exchange == 'NAS' }
#selected_symbols = (0... nas_symbols.length).select{ |x| x%5 == 5-1 }.map { |y| nas_symbols[y] } 

#selected_symbols.each do|stock| 
#  begin
#    Stock.find_or_create_by('ticker'=>stock.symbol, 'name' => client.company(stock.symbol).company_name,'last_price'=>client.price(stock.symbol))
#    rescue => exception 
#  end
#end

=begin
symbols.shuffle.slice(0,30).each do |symbol|
  quote = client.quote(symbol.symbol)
  company = client.company(symbol.symbol)
  logo = client.logo(symbol.symbol)

  Stock.create(symbol: symbol.symbol, company: company.company_name)
end
=end

User.create!([
  {username:'stockhomeadmin', email: "admin@stockhome.com", password: "password", password_confirmation: "password", role: 'admin', approved: true},
  #{username:'stockhomebroker', email: "broker@stockhome.com", password: "123456", password_confirmation: "123456", role: 'broker', approved: true},
  #{username:'stockhomebuyer', email: "buyer@stockhome.com", password: "123456", password_confirmation: "123456", role: 'buyer', approved: true}
])