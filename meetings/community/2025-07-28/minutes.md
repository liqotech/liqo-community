# Liqo Community Meeting Minutes

## Meeting Details

- **Date:** 2025-07-28
- **Time:** 17:30 - 18:30 (CEST)

## Agenda

- Status of the project: patch release 1.0.1
- Introducing 1st step of network security in Liqo (liqotech/liqo#3022) (from Giulio Brazzo)
- Discussing pro/cons about possible implementation choices for network optimizations for hub-and-spoke topologies: kubernetes control plane (from Gabriele Santi)
- Date of next meeting
- AOB

## Minutes

### 1. Status of the project: patch release 1.0.1

Patch release 1.0.1 has been published, mainly bug fixing (e.g., permission issue for in-band peering), added support for ArgoCD.

### 2. Introducing 1st step of network security in Liqo (Giulio Brazzo)

He describes the work done to enrich Liqo with the capability to enforce security policies, which are mapped into netfilter rules.
This is mainly aimed at the capability to enforce security policies withing the Liqo Gateway; in the local/remote clusters we can also use network policies, which is impossible **within** the Liqo Gateway as the traffic is tunneled.

The full presentation is available in the current repository.

#### 3. Pro/cons about possible implementation choices for network optimizations for hub-and-spoke topologies: kubernetes control plane (Gabriele Santi)

Gabriele motivates why the previous suggestion he received for the implementation of this feature in the previous community meeting resulted to be rather complicated and not totally effective.
Upon discussion, the consensus was for a different implementation based on a modified version of the Virtual Kubelet.

### 4. Date of next meeting

Consensus for September 8th.
Invite Riccardo Medina to present his work on the cluster autoscaler based on Liqo.

## Resources

- Slides: available in the current folder
- Recordings: [https://youtu.be/Dw3OeymWpjo](https://youtu.be/Dw3OeymWpjo)
