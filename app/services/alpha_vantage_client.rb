require 'net/http'
require 'json'

class AlphaVantageClient
  BASE_URL = 'https://www.alphavantage.co/query?'.freeze
  API_KEY = 'CNUEE5M504NTXA6'  # Alpha Vantageから取得したAPIキーを設定します

  def self.get_stock_quote(symbol)
    uri = URI("#{BASE_URL}function=GLOBAL_QUOTE&symbol=#{symbol}&apikey=#{API_KEY}")
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end
