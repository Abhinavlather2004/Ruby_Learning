# 10. Write RSpec tests to ensure that a WeatherForecast service class correctly parses API data and returns the expected weather information. Mock the API call to test without hitting the actual service.

class WeatherForecast
  def self.fetch_data
    {
      "temperature" => "20°C",
      "condition" => "Sunny"
    }
  end

  
  def self.get_forecast
    data = fetch_data
    {
      temperature: data["temperature"],
      condition: data["condition"]
    }
  end
end