#
# Cookbook Name:: se-yum
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "disable mirrorlist for proxy" do
  command "sed -e 's/^#baseurl/baseurl/g' -e 's/^mirrorlist/#mirrorlist/g'  -i /etc/yum.repos.d/*.repo"
  only_if do ::File.exists?('/etc/profile.d/vagrant.sh') end
end
