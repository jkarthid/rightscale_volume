#
# Cookbook Name:: rightscale_volume
#
# Copyright RightScale, Inc. All rights reserved.
# All access and use subject to the RightScale Terms of Service available at
# http://www.rightscale.com/terms.php and, if applicable, other agreements
# such as a RightScale Master Subscription Agreement.

gem_packages = [
  'json',
  'rest-client',
  'right_api_client',
  'system_timer'
]

# Install gems during compile phase so that they are available to files
# which require them during converge phase.
gem_packages.each do |gem_pkg|
  chef_gem gem_pkg
end
