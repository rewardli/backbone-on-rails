require 'test_helper'
require 'generators_test_helper'
require 'generators/backbone/install/install_generator'

class InstallGeneratorTest < Rails::Generators::TestCase

  tests Backbone::Generators::InstallGenerator


  destination Rails.root
  setup :prepare_destination

  include GeneratorsTestHelper

  test "Assert directory structure is created" do
    run_generator

    %w(collections models routers views).each do |dir|
      assert_directory "#{js_path}/#{dir}"
    end
  end

end

