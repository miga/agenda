# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agenda_session',
  :secret      => 'd81040b6758dc2f377bab4a156654ec3cf40c515a9243bc523d8cd357ae8d34699bf11f09a389fdf595c7dbbb8a5e61cd44ac6cef08c76d0309dce77b1956bde'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
