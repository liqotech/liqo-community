# Liqo Maintainers Meeting Minutes

## Meeting Details

- **Date:** 2026-02-04
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

- New release: decided to go for a new release (1.1), although the number of new features are limited. It would include also the bug fixes merged so far, particularly the one about dropped packets with Cilium dataplane v2 in Google.
- Review of all the open PR, selected which ones should be merged in 1.1. Mantainers decided also who will be in charge of finalizing each PR. 
- Decided to meet again in one week in order to review the status of the PRs, and finalize the release.
- Consensus about documenting better the PRs proposed by maintainers. Currently, many PRs have a very short description, saying what the PR is about, but missing to describe _why_ that PR was needed (e.g., [PR #3186](https://github.com/liqotech/liqo/pull/3186)).
- The definition of the _Roadmap_ is becoming a critical issue. Discussion postponed to next meeting, but consensus about listing the features we would like to introduce, without strict dates.
- Claudio Lorina highlighted why the current code that handles the renewal of certificates does not work. Some deep reworking is needed for this feature; more discussion in next meeting, as long as Claudio can work a bit on it.
- Francesco Cheinasso highlighted why the current 'leader election' mechanism for the network gateway has troubles. So far, a minor patch allows to disable this feature, but some work is needed in order to keep it and make more robust. FrancescoC will take care of this, and he will update in the next meeting.
