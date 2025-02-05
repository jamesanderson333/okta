terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 4.13.1"
    }
  }
}
# Configure the Okta Provider
#
# NOTE: Change place holder values denoted by brackets to real values, including
# the brackets.
#
# NOTE: If environment variables are utilized for provider settings the
# corresponding variable name does not need to be set in the provider config
# block.
provider "okta" {
  org_name = "jeaoie"
  base_url = "oktapreview.com"
  api_token = "00XDXzwo1qj_jwaIZBh2WjDKlWcRfPO2M6UP_V7LhP"
}
resource "okta_group" "AGROUPJAMES" {
 name = "Example Terraform Group"
}
resource "okta_app_oauth" "AppCreatedInUI" {
 label = "AppCreatedInUI-James"
 type = "web"
 redirect_uris = ["http://localhost:8080/authorization-code/callback"]
}
import {
 id = "0oak7rlu3mNaRJXAL1d7"
 to = okta_app_oauth.AppCreatedInUI
}
import {
 id = "0oak7stxxjIYEGHXz1d7"
 to = okta_app_oauth.ANewWebAppJimmy
}
