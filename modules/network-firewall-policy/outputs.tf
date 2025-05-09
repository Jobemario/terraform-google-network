/**
 * Copyright 2025 Google LLC
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

output "fw_policy" {
  value       = coalescelist(google_compute_network_firewall_policy.fw_policy, google_compute_region_network_firewall_policy.fw_policy)
  description = "Firewall policy created"
}

output "vpc_associations" {
  value       = merge(google_compute_network_firewall_policy_association.vpc_associations, google_compute_region_network_firewall_policy_association.vpc_associations)
  description = "VPC associations created"
}

output "rules" {
  value       = merge(google_compute_network_firewall_policy_rule.rules, google_compute_region_network_firewall_policy_rule.rules, google_compute_network_firewall_policy_packet_mirroring_rule.rules)
  description = "Firewall policy rules created"
}
