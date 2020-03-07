# Cookbook:: acpi
# Ohai Plugin:: acpi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Ohai.plugin(:Acpi) do
  provides 'acpi'

  def collect_acpi(flags)
    data = {}
    shell_out("acpi -#{flags}").stdout.lines do |line|
      if line =~ /([a-zA-Z]+)\s+(\d+):\s+(.*)/
        data[$2.to_s] = [] unless data.key?($2.to_s)
        data[$2.to_s] << $3
      end
    end
    data
  end

  collect_data(:linux) do
    acpi Mash.new
    acpi[:battery] = collect_acpi('ib')
    acpi[:adapter] = collect_acpi('a')
    acpi[:thermal] = collect_acpi('t')
    acpi[:cooling] = collect_acpi('c')
  end
end
