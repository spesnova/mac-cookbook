# Description
This cookbook is designed to setup my mac by using [library/application cookbook pattern](http://devopsanywhere.blogspot.jp/2012/11/how-to-write-reusable-chef-cookbooks.html).

Currently supported:

* Install and configure iTerm2
* Install Homebrew
* Install Google Chrome
* Install Google Japanese Input
* Install Better Touch Tool
* Install bash-completion
* Install vim
* Install git
* Install rbenv & ruby-build
* Install and configre rubies and rubygems

# Requirements
## Platform

* Mac OS X

Tested on

* 10.7.5
* 10.8.4

## Cookbooks

* [iTerm2](https://github.com/jtimberman/iterm2-cookbook.git)
* [Homebrew](https://github.com/mxcl/homebrew)
* [max os x](https://github.com/jtimberman/mac_os_x-cookbook)

# Usage
Include the recipe on your node or role for your mac. Modify the `files/default/*` files to customize each apps.

# Attributes

* `node["iterm2"]["plist_cookbook"]` - cookbook where the plist file is located
* `node["mac"]["bettertouchtool_download_uri"]`

# Recipes
## mac::default

* Install iTerm2
* Configure iTerm2 (manage `com.googlecode.iterm2.plist`)

## mac::chrome

* Install Google Chrome

## mac::google_japanese_input

* Install Google Japanese Input

## mac::bettertouchtool

* Install Better Touch Tool

## mac::git

* Install git via homebrew

## mac::bash-completion

* Install bash-completion via homebrew

## mac::vim

* Install vim via homebrew

## mac::rbenv

* Install rbenv and ruby-build via homebrew

(also openssl and readline will be installed)

## mac::ruby

* Install ruby via ruby_build and rbenv

When you use this, add `ruby_build` recipe too.

Ex.

```json
  ...
  "recipe[ruby_build"]
  "recipe[mac::ruby"]
  ...
```

# Author

Author:: Seigo Uchida (<spesnova@gmail.com>)

Copyright:: 2013 Seigo Uchida (<spesnova@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
