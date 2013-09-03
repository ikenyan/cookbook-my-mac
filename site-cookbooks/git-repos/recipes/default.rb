#
# Cookbook Name:: git-repos
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

git "/Users/" + node["username"] + "/proj/private/namespace.js" do
  repository "https://github.com/satoshi-takano/namespace.js.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/as3-IntegratedFramework" do
  repository "https://github.com/satoshi-takano/as3-IntegratedFramework.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/.emacs.d" do
  repository "https://github.com/satoshi-takano/emacs-config.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/ExtendedAudioUnit" do
  repository "https://github.com/satoshi-takano/ExtendedAudioUnit.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/hataraki" do
  repository "https://github.com/satoshi-takano/hataraki.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/namespace_advance.js" do
  repository "https://github.com/satoshi-takano/namespace_advance.js.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/telltale" do
  repository "https://github.com/satoshi-takano/telltale.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/Unretina" do
  repository "https://github.com/satoshi-takano/Unretina.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end

git "/Users/" + node["username"] + "/proj/private/cpp-events" do
  repository "https://github.com/satoshi-takano/cpp-events.git"
  reference "master"
  user node["username"]
  group "staff"
  action :checkout
end
