require 'factory_girl_rails'

FactoryGirl.definition_file_paths.unshift File.expand_path('../factories', __dir__)
FactoryGirl.find_definitions
DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end
end
