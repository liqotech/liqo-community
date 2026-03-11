# Liqo Maintainers Meeting Minutes

## Meeting Details

- **Date:** 2026-03-02
- **Time:** 17:30 - 18:30 (CEST)

## Participants

- Alessandro Olivero
- Claudio Lorina
- Francesco Cheinasso
- Francesco Torta
- Fulvio Risso

## Agenda

- Open Agenda
- AOB

## Minutes

**New patch release**: decided to go for a new patch release (1.1.2), given that the latest changes in how firewall and routing configurations are handled generated a lot of messages at run-time which may impair the operations of some Liqo controllers.
For instance, some other minor bug fixing have been merged so far, which would be included in the release.

**[Issue #1320](https://github.com/liqotech/liqo/issues/3210)**: very long discussions, including interactions with the broader Liqo community. On Slack, decided to discuss the issue in a conf call among maintainers (actually, this meeting) to take a decision and move on, given that all the proposed solutions have their pro/cons.
In the end, decided to go for a new "status" field in the gateway and internal network controllers, as other solutions could be even worse (e.g., a new CRD or configmap would give the impression that changing the data within would trigger some changes in Liqo, which would not be correct).

**Existing PRs**: decided to examine with greater details the existing PRs from Riccardo Tornesello (extending rules for firewall configuration), Gabriele Santi (optimizing direct communications among leaf clusters), and Giulia Falaschi (force unpeer).

**Improving the speed of the Wireguard network**: decided to setup an extra (private) meeting for next week to discuss about the proposal coming from Mirco Barone, about increasing the number of parallel Wireguard tunnels in the gateway, in order to improve the speed of the data exchange among two Liqo peers.
