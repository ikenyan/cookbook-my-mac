#
# Cookbook Name:: system-preference
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "com.apple.dock.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.dock.plist"
end

template "com.apple.desktop.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.desktop.plist"
end

template "com.apple.finder.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.finder.plist"
end

template "com.apple.spotlight.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.spotlight.plist"
end

template "com.apple.menuextra.clock.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.menuextra.clock.plist"
end

template "com.apple.symbolichotkeys.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.symbolichotkeys.plist"
end

template "com.apple.Terminal.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.Terminal.plist"
end

template "com.apple.Dictionary.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.apple.Dictionary.plist"
end

template "com.naotaka.ClipMenu.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.naotaka.ClipMenu.plist"
end

template "com.panic.Transmit.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.panic.Transmit.plist"
end

template "org.pqrs.KeyRemap4MacBook.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/org.pqrs.KeyRemap4MacBook.plist"
end

template "com.manytricks.Moom.plist" do
  path "/Users/" + node["username"] + "/Library/Preferences/com.manytricks.Moom.plist"
end

bash "Apply preferences" do
  user node["username"]
  code <<-EOH
    killall Dock
  EOH
end

bash "bash preference" do
  cwd "/Users/" + node["username"]
  code <<-EOH
    chmod 664 .bash_profile
    echo 'export PS1="[\w]\$ "' >> .bash_profile
  EOH
end
