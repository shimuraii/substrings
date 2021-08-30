require 'spec_helper'
require_relative '../substrings_file/sub_string.rb'

    RSpec.describe 'Sub strings ' do
        describe 'see if it is working' do
            it 'gets and translates number properly with case' do
              expect(sub_string("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])).to eq({ "below" => 1, "low" => 1 })
            end
            it 'gets and translates number properly with case' do
                expect(sub_string("Howdy partner, sit down! How's it going?", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
              end
        end
    end
