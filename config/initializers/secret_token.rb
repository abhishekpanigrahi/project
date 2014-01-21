# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end


Project::Application.config.secret_token = 'b149775fc632fe2d8b32ec7700c922905c024fe9bac99fe0eee78b1cdcce96e5b11ead7fea665e492f621296ec37f011e724a2a592ecd5da51ee7aa914a0480d'
