#
# Cookbook Name:: mac
# Recipe:: cyberduck
#
# Copyright (C) 2013 Seigo Uchida
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

version = node["mac"]["cyberduck"]["version"]

remote_file "#{Chef::Config[:file_cache_path]}/Cyberduck-#{version}.zip" do
  source node["mac"]["cyberduck"]["download_uri"]
  action :create_if_missing
end

execute "unzip Cyberduck to /Applications" do
  command "unzip -o #{Chef::Config[:file_cache_path]}/Cyberduck-#{version}.zip"
  cwd "/Applications"
  not_if { File.directory?("/Applications/Cyberduck.app") }
  group "wheel"
end
