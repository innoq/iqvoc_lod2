require 'iqvoc/environments/production'

if Iqvoc::Lod2.const_defined?(:Application)
  Iqvoc::Lod2::Application.configure do
    # Settings specified here will take precedence over those in config/environment.rb
    Iqvoc::Environments.setup_production(config)

    # The JDBC driver URL for the connection to the virtuoso triple store.
    # Login credentials have to be stored here too. See
    # http://docs.openlinksw.com/virtuoso/VirtuosoDriverJDBC.html#jdbcurl4mat for
    # more details.
    # Example: "jdbc:virtuoso://localhost:1111/UID=dba/PWD=dba"
    # Use nil to disable virtuoso triple synchronization
    # Rails.application.config.virtuoso_jdbc_driver_url = "jdbc:virtuoso://virtuoso.foo:1111/UID=foo/PWD=bar/charset=UTF-8"
    config.virtuoso_jdbc_driver_url = nil

    # Set up the virtuoso synchronization (which is a triggered pull from the
    # virtuoso server) to be run in a new thread.
    # This is needed in environments where the web server only runs in a single
    # process/thread (mostly in development environments).
    # When a synchronization would be triggered e.g. from a running
    # update action in the UPB, the update would trigger virtuoso to do a HTTP GET
    # back to the UPB to fetch the RDF data. But the only process in the UPB would be
    # blocked by the update... => Deadlock. You can avoid this by using the threaded
    # mode.
    config.virtuoso_sync_threaded = false
  end
end
