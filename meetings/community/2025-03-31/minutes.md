# Liqo Community Meeting Minutes

## Meeting Details

- **Date:** 2025-03-31
- **Time:** 17:30 - 18:30 (CET)

## Agenda

1. Understanding the Liqo community
2. Liqo v1.0.0 overview + live-demo
3. Community feature proposal: “Network optimizations for hub-and-spoke topologies”
4. Open floor for ideas

## Minutes

### 1. Understanding the Liqo Community

- New [Liqo Community Repository](https://github.com/lico-project/community) created for:
  - Meeting notes
  - Presentation slides
  - Demo materials
- Meeting Schedule:
  - Agenda-driven via Slack proposals
  - Default every 4-6 weeks
  - All sessions recorded and documented

### 2. Liqo 1.0 Release Highlights

#### Key Improvements

- **Network Module**:
  - Supports multiple network technologies
  - Better throughput and scalability
- **Authentication Module**:
  - Simplified declarative Kubernetes user management
  - Minimized permissions
- **Offloading Module**:
  - Multiple virtual nodes per cluster
  - Customizable resource management

#### API Changes

- Fully declarative CRD-based API
- Native GitOps support (ArgoCD/Flux compatible)

### 3. Feature Proposal: Network optimizations for hub-and-spoke topologies

#### Current Challenge

- Allow traffic between leaf clusters routes through main cluster

#### Proposed Solution

1. Direct connections using a new `liqoctl` command
2. Centralized CRD to manage shortcuts
3. Main cluster awareness of direct routes

#### Next Steps

- Develop as standalone tool initially
- Gather community feedback via [#3006](https://github.com/liqotech/liqo/issues/3006)
- Potential future integration into core

### 4. Open floor for ideas

#### Dead clusters management

How to handle permanently unavailable clusters?

- Cleanup improved in 1.0
- Manual deletion via tenant namespace
- Future `licoctl` command planned

#### Namespace Retention

Tenant namespaces are retained after unpeering.

- Intentional design for modularity
- Optional cleanup flag available

#### Resource Quotas

Consumer clusters are unaware of provider-side quotas (e.g., 10 GPU requests vs. 5 available).

Possible solutions:

- Manual pod eviction
- Future improvements planned

### 4.3 Monitoring

Prometheus Setup suggestions:

- Per-cluster installation recommended
- Use ServiceMonitors for auto-discovery
  - Included in Liqo installation
- Centralized options:
  - remote-write to:
    - Prometheus
    - Thanos
    - Mimir

## Resources

Slides:

- [Liqo Community Meeting](./liqo-community-meeting.pdf)
- [Network optimizations for hub-and-spoke topologies](./network-optimization.pdf)

Recording:

- [Community Meeting #1 - A new beginning](https://www.youtube.com/watch?v=0n7Oy0m1f0M)
