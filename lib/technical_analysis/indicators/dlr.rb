module TechnicalAnalysis
  class Dlr

    # Calculates the daily log return (percent expressed as a decimal) for the data over the given period
    # https://www.quora.com/What-are-daily-log-returns-of-an-equity
    # https://en.wikipedia.org/wiki/Rate_of_return#Logarithmic_or_continuously_compounded_return
    # 
    # @param data [Array] Array of hashes with keys (:date, :value)
    # @param price_key [Symbol] The hash key for the price data. Default :value
    # @return [Hash] A hash of the results with keys (:date, :value)
    def self.calculate(data, price_key: :value)
      Validation.validate_numeric_data(data, price_key)
      Validation.validate_length(data, 1)

      data = data.sort_by_hash_date_asc # Sort data by descending dates

      output = []
      prev_price = data.first[price_key].to_f

      data.each do |v|
        current_price = v[:close].to_f

        output << { date: v[:date], value: Math.log(current_price / prev_price) }

        prev_price = current_price
      end

      output
    end

  end
end