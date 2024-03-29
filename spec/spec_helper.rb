# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
require 'pundit/rspec'
require 'simplecov'
require 'spec_session_helper'

::SimpleCov.start

::RSpec.configure do |config|
  config.expect_with(:rspec) do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with(:rspec) do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.example_status_persistence_file_path = "spec/examples.txt"
  config.profile_examples = 10
  config.order = :random
  ::Kernel.srand(config.seed)
end
