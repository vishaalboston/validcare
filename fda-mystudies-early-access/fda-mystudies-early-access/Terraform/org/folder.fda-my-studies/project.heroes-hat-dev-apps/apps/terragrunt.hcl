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

dependency "network" {
  config_path = "../../project.validcare-research-networks/networks/"

  mock_outputs = {
    private_network = {
      name = "mock-network"
    }
    gke_subnetwork = {
      name = "mock-subnetwork"
    }
  }
}

inputs = {
  network    = dependency.network.outputs.private_network.name
  subnetwork = dependency.network.outputs.gke_subnetwork.name
}
