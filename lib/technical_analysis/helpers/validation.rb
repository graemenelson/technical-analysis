module TechnicalAnalysis
  class Validation

    def self.validate_numeric_data(data, *keys)
      keys.each do |key|
        unless data.all? { |v| v[key].is_a? Numeric }
          raise ValidationError.new "Invalid Data. '#{key}' is not valid price data."
        end
      end
    end

    def self.validate_length(data, size)
      raise ValidationError.new "Not enough data for that period" if data.size < size
    end

    def self.validate_options(options, valid_options)
      raise ValidationError.new "Options must be a hash." unless options.respond_to? :keys
      raise ValidationError.new "No valid options provided." unless valid_options

      return true if (options.keys - valid_options).empty?
      raise ValidationError.new "Invalid options provided. Valid options are #{valid_options.join(", ")}"
    end
    
    def self.validate_date_time_key(data)
      first_data = data.first

      begin
        unless first_data.key?(:date_time) && DateTime.parse(first_data[:date_time])
          raise ValidationError.new "Dataset must include date_time field with timestamps"
        end
      rescue
        raise ValidationError.new "Dataset must include date_time field with timestamps"
      end
    end

    class ValidationError < StandardError; end

  end
end
