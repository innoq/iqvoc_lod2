## Deployment / Installation

1. Configure the database connection via `config/database.yml`.
2. Run `bundle install`
3. Run `bundle exec rake db:create RAILS_ENV=production` to create the database
4. Create the necessary tables by running `bundle exec rake iqvoc:db:migrate_all RAILS_ENV=production`
5. Load some base data by running `bundle exec rake iqvoc:db:seed_all RAILS_ENV=production`
6. Precompile static assets with `bundle exec rake assets:precompile`
7. (Re)boot the app in your app server
7. Log in with "admin@iqvoc" / "admin" or "demo@iqvoc" / "cooluri" (cf. step #5)
8. Visit the Users section and change the default passwords
