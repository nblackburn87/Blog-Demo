require 'spec_helper'

describe Post do
  belongs_to :user
  
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }

end
