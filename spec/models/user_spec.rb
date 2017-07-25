require 'rails_helper'

RSpec.describe User, type: :model do
  %w(email role name).each {|col| it { should validate_presence_of col } }
end
