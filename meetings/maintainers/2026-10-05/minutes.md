# Liqo Maintainers Meeting Minutes

## Meeting Details

- **Date:** 2026-10-05
- **Time:** 17:30 - 18:45 (CEST)

## Participants

- Alessandro Olivero
- Claudio Lorina
- Francesco Torta
- Fulvio Risso

## Agenda

- No agenda

## Minutes

### Define how the procedure about how to report security vulnerabilities in Liqo, and how to handle this case

(Fulvio) Check with other projects (e.g., Kamaji) how the handle this case, and make a proposal for Liqo

### Other issues

- (Fulvio) Check whether the DNS service at Aruba offers also a mailbox (or at least a redirect)
- (Fulvio) If the email redirect (at least) is offered, migrate the DNS from Amazon to Aruba
- (Fulvio) Create an email dedicated to report security vulnerabilities
- (Fulvio) Update the Liqo repo with the procedure about how to report security vulnerabilities

### Decisions

- Schedule a bi-weekly maintainer's meeting
- Turn temporarily off the Cilium/Calico tests, which are currently broken

### Pending PRs

- Merging ready PRs, and review of the status of the "urgent" ones ([https://github.com/liqotech/liqo/issues/3371](https://github.com/liqotech/liqo/issues/3371))
- Deep dive into [https://github.com/liqotech/liqo/pull/3390/](https://github.com/liqotech/liqo/pull/3390/)
