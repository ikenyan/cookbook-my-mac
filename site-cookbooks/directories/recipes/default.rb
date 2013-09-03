#
# Cookbook Name:: directories
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/Users/" + node["user"]["name"] + "/proj" do
  owner node["user"]["name"]
  group "staff"
  mode 0775
  recursive true
  action :create
end

directory "/Users/" + node["user"]["name"] + "/proj/work" do
  owner node["user"]["name"]
  group "staff"
  mode 0775
  recursive true
  action :create
end

directory "/Users/" + node["user"]["name"] + "/proj/oss" do
  owner node["user"]["name"]
  group "staff"
  mode 0775
  recursive true
  action :create
end

directory "/Users/" + node["user"]["name"] + "/proj/private" do
  owner node["user"]["name"]
  group "staff"
  mode 0775
  recursive true
  action :create
end
