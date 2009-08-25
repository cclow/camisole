# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_camisole_session',
  :secret      => 'ddd17cb7addcffe31d67c344fe139883225c7a5a9ad17b0e6827b6f6a83b784009853201b17dc420d87e217c4a5f295e9d0dd34b453f994ea4d21e9e66f7d224'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
