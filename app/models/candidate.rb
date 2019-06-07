class Candidate < ApplicationRecord
  belongs_to :user

  ATTR_METHODS = Array.new
  attribute_names.reject { |val| %w[id created_at updated_at].include?(val) }
    .each do |val|
    ATTR_METHODS << val.to_sym
    ATTR_METHODS << "#{val}=".to_sym
  end

  PARTIES = [
    "Democratic Party",
    "Republican Party",
    "Socialist Party",
    "Libertarian Party",
    "Nationalist Party"
  ]
end
