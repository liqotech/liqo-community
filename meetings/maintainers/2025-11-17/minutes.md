# Maintainer meetings minutes - Year 2025

## November 17, 2025

### Participants

- Alessandro Olivero
- Claudio Lorina
- Francesco Cheinasso
- Francesco Torta
- Fulvio Risso

### Agenda

- Open agenda

### Minutes

- Necessity to restore the current Liqo CI/CD (a lot of patches need to be merged and a new patch release is needed): assigned to FrancescoC
- Necessity to reduce the overhead before and after the community meeting:
  - Proposal to setup also some community meeting with "open agenda", in order to allow external people to participate and discuss about their patches/open issues: APPROVED
  - Proposal to avoid video recording in meeting with open agenda: APPROVED
- Pending technical features
  - New PR approved need to be merged asap
  - New idea from Elad Dolev, to solve a problem with Dataplanev2 (Cilium) in Google: discussed and a possible implementation is envisioned. Still pending the assignee for this implementation.
  - New idea from FrancescoC, about a monitoring process that is able to keep under control the connectivity from Pods of a first cluster, and services/pods on the second cluster. Discussed, not yet clear about the availability of resources to take care of this task.
- Update on pending experimental activities on Liqo
  - Project to seamless migrate to a newer version of Liqo (@POLITO): discussed
  - Project to implement other inter-cluster technologies (@POLITO): not discussed
  - Cluster autoscaler based on Liqo (@POLITO): not discussed
  - New controller to handle Liqo security (@POLITO): not discussed

### Actions

- (Fulvio) Send invite for next "un-unstructured" community meeting
- (FrancescoC) Fix Liqo CI/CD

### Pending actions

- Need to update the "roadmap" on Liqo.
