#
# Cookbook Name:: directories
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/Users/" + node["username"] + "/proj" do
  owner node["username"]
  group "staff"
  mode 0775
  recursive true
  action :create
end

directory "/Users/" + node["username"] + "/proj/work" do
  owner node["username"]
  group "staff"
  mode 0775
  recursive true
  action :create
end

directory "/Users/" + node["username"] + "/proj/oss" do
  owner node["username"]
  group "staff"
  mode 0775
  recursive true
  action :create
end

directory "/Users/" + node["username"] + "/proj/private" do
  owner node["username"]
  group "staff"
  mode 0775
  recursive true
  action :create
end
