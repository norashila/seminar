# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_recipe_session',
  :secret      => '21104b1bb78923664b646db09a2417c3a0728befe377da0eb73f0b667a48e26be88d6505c1d2fb93f9df30477273b82d1cf3535474ff9147a4ac0d360d8466e2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
