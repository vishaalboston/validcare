# Copyright 2020 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include {
  path = find_in_parent_folders()
}

dependency "project" {
  config_path  = "../project"
  skip_outputs = true
}

dependency "service_project_apps" {
  config_path = "../../project.heroes-hat-dev-apps/project"

  mock_outputs = {
    project_id     = "mock-apps-project"
    project_number = "123"
  }
}

dependency "service_project_data" {
  config_path = "../../project.heroes-hat-dev-data/project"

  mock_outputs = {
    project_id     = "mock-data-project"
    project_number = "123"
  }
}

inputs = {
  service_projects = [
    {
      id      = dependency.service_project_apps.outputs.project_id
      num     = dependency.service_project_apps.outputs.project_number
      has_gke = true
    },
    {
      id      = dependency.service_project_data.outputs.project_id
      num     = dependency.service_project_data.outputs.project_number
      has_gke = false
    },
  ]
}
