# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kksj1s7_session',
  :secret      => '748843451feb37146d3ca4764f7e2c7bd508e9dc34632f58419e18410e651263e6632d1445aa0c497fe633d88e7145f83bcdc318705b84db1f061678bd00c76f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
