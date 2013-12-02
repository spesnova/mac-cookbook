#
# Cookbook Name:: mac
# Recipe:: aws_cli
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

package "python"

python_pip "awscli" do
  notifies :run, "bash[Enable tab completion for bash]", :immediately
  action :install
end

# TODO(spesnova) Support zsh
# https://github.com/aws/aws-cli#command-completion
bash "Enable tab completion for bash" do
  code "complete -C aws_completer aws"
  action :nothing
end
