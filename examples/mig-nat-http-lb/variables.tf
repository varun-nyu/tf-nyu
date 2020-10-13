/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "region" {
  type        = string
  description = "VM instance region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "VM Instance Zone"
  default     = "us-central1-c"
}

variable "subnetwork" {
  type        = string
  description = "Project subnetwork"
  default     = "https://www.googleapis.com/compute/v1/projects/vo383-mark1-c066/regions/us-central1/subnetworks/vo383-mark1-subnet-01"
}

variable "project_id" {
  type        = string
  description = "The GCP project ID"
  default     = "vo383-mark1-c066"
}

variable "credential_file" {
  type        = string
  description = "Project credential file"
  default     = "./../../credentials.json"
}

variable "network_name" {
  default = "vo383-mark1-net"
}

variable "sub_network_name" {
  default = "vo383-mark1-subnet-01"
}

variable "service_account" {
  type = object({
    email  = string
    scopes = set(string)
  })
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
  default = {
    email = "tf-compute@vo383-mark1-c066.iam.gserviceaccount.com"
    scopes = []
  }
}

