# Liqo Community Meeting Minutes

## Meeting Details

- **Date:** 2025-07-07
- **Time:** 17:30 - 18:30 (CEST)

## Agenda

- Status of the project
  - Upcoming bug-fixing minor release
  - Next (minor) release
- Technical updates on interesting features:
  - Network optimizations for hub-and-spoke topologies: network fabric (Santo Calderone)
  - Network optimizations for hub-and-spoke topologies: kubernetes control plane (Gabriele Santi)
- Date of next meeting (July 28? Or Sept 1st?)
- AOB

## Minutes

### 1. Status of the project

Francesco Torta  speaks: Patch release 1.0.1 is expected within the end of the month; no breaking changes, but some bug fixing (e.g., permission issue for in-band peering), added support for ArgoCD, and some minor fixes.

Alessandro Olivero speaks: Next minor release 1.1 is expected end of Sept - Oct; main feature so far is new APIs for security rules within the Liqo domain. The full roadmap has to be defined.

**Actions**: update the file ROADMAP, which is still reporting what is expected in 1.0.

### 2. Technical updates on interesting features

#### Network optimizations for hub-and-spoke topologies: network fabric (Santo Calderone)

He describes the scenario and he demonstrates the direct network connection between the two "edge" clusters.

Useful links (for this feature):

- Controller repo: [https://github.com/scal110/foreign_cluster_connector.git](https://github.com/scal110/foreign_cluster_connector.git)
- CLI repo: [https://github.com/scal110/cli-liqo-shortcut.git](https://github.com/scal110/cli-liqo-shortcut.git)

#### Network optimizations for hub-and-spoke topologies: kubernetes control plane (Gabriele Santi)

He describes the scenario and he demonstrates how information, in the Kubernetes control plane, can be propagated in the "edge" clusters.

Suggestion from Alessandro Olivero: replace the logic currently in the virtual kubelet with a more generic webhook.

Suggestion from Alessandro Rontani: consider also the case of a "leaf" cluster which has to establish two shortcuts, with two different clusters (e.g., because the two clusters target of the shortcut belong to two different entities).

### 3. Date of next meeting

Consensus for July 28.
Invite Giulio Brazzo to present the new security features in the upcoming Liqo 1.1.

## Resources

- Slides: available in the current folder
- Recordings: [https://youtu.be/0vhrfhrDx94](https://youtu.be/0vhrfhrDx94)
