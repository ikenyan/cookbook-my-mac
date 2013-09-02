#
# Cookbook Name:: mac-dmg
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
dmg_package "Tunnelblick" do
   source "http://tunnelblick.googlecode.com/files/Tunnelblick_3.1.2.dmg"
   checksum "a3fae60b6833175f32df20c90cd3a3603a"
   action :install
 end

