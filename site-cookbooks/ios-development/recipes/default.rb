#
# Cookbook Name:: ios-development
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
gem_package "cocoapods" do
  action
end

template "com.apple.Xcode.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.Xcode.plist"
end
