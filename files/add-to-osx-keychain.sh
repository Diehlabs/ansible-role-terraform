#/bin/bash

# Add a password to the OSX keychain.
# Might pursue using this with a credentials helper to store
#  the TF tokens in a more secure manner.

security add-generic-password \
  -a $USER \
  -s app.terraform.io \
  -w $TF_TOKEN
