# Description
This cookbook is designed to setup my mac by using [library/application cookbook pattern](http://devopsanywhere.blogspot.jp/2012/11/how-to-write-reusable-chef-cookbooks.html).

Currently supported:

* Install and configure iTerm2
* Install Google Chrome

# Requirements
## Platform

* Mac OS X (Tested on 10.7.5)

## Cookbooks

* [iTerm2](https://github.com/jtimberman/iterm2-cookbook.git)

# Usage
Include the recipe on your node or role for your mac. Modify the `files/default/*` files to customize each apps.

# Attributes

* `node["iterm2"]["plist_cookbook"]` - cookbook where the plist file is located

# Recipes
## mac::default

* Install iTerm2
* Configure iTerm2 (manage `com.googlecode.iterm2.plist`)
* Install Google Chrome

# Author

Author:: Seigo Uchida (<spesnova@gmail.com>)

Copyright:: 2013 Seigo Uchida (<spesnova@gmail.com>)

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

```
http://www.apache.org/licenses/LICENSE-2.0
```

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
