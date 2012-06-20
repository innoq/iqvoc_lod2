require 'iqvoc/environments/test'

if Iqvoc::Lod2.const_defined?(:Application)
  Iqvoc::Lod2::Application.configure do
    # Settings specified here will take precedence over those in config/environment.rb
    Iqvoc::Environments.setup_test(config)
  end
end
