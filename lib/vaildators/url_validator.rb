require 'addressable/uri'

class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value.present?
      begin
        uri = Addressable::URI.parse(value)
        record.errors.add(attribute) unless uri.host
      rescue Addressable::URI::InvalidURIError
        record.errors.add(attribute)
      end
    end
  end
end
