# Liqo Community Meeting Minutes

## Meeting Details

- **Date:** 2025-09-15
- **Time:** 17:30 - 18:30 (CEST)

## Agenda

- Kubernetes Cluster Autoscaler based on Liqo (from Riccardo Medina)
- Date of next meeting
- AOB

## Minutes

### 1. Status of the project: patch release 1.0.2 and feature release 1.1.0

Patch release 1.0.2 is planned in a few weeks (likely October), mainly bug fixing.

New features such as security, and initial support for leaft-to-leaf communication shortcuts are planned in the next feature release 1.1.0, likely at beginning 2026.

### 2. Kubernetes Cluster Autoscaler based on Liqo (Riccardo Medina)

He describes his work on the Kubernetes Cluster Autoscaler, which has been extended to support the management of remote notes through Liqo.
This project leverages a new, CA-compatible gRPC server, which can acquire and release  resources from a remote cluster with Liqo.
This allow the CA to support also resource-constrained environtment, e.g., on-prem cluster, providing them the required elasticity.

The full presentation is available in the current repository.

The project source is available at https://github.com/rmedina97/liqo-autoscaling-system.

### 3. AOB

Alessandro Rontani suggested to think about promoting more the Liqo community meeting.
Maintainers agreed, but no clear idea how.

### 4. Date of next meeting

Consensus for mid-October, no precise date defined yet.

### Resources

- Slides: available in the current folder
- Recordings: https://youtu.be/RwHliVlgjyI
