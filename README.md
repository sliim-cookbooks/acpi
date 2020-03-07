acpi Cookbook
================
Install `acpi` package + ohai plugin.  
[![Cookbook Version](https://img.shields.io/cookbook/v/acpi.svg)](https://community.opscode.com/cookbooks/acpi) [![Build Status](https://travis-ci.org/sliim-cookbooks/acpi.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/acpi) 

Requirements
------------
#### Cookbooks
- `ohai` - `https://supermarket.chef.io/cookbooks/ohai`

#### Platforms
The following platforms and versions are tested and supported using Opscode's test-kitchen.
- Debian 8
- Debian 9
- Debian 10
- Ubuntu 14.04
- Ubuntu 16.04
- Ubuntu 18.04

Usage
-----
#### acpi::default
Just include `acpi` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[acpi]"
  ]
}
```

#### Tests

- First, install dependencies:  
`bundle install`

- Run Checkstyle and ChefSpec:  
`bundle exec rake`

- Run Kitchen tests:  
`bundle exec rake kitchen`  

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sliim <sliim@mailoo.org> 

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
