# Liqo Maintainers Meeting Minutes

## Meeting Details

- **Date:** 2026-03-09
- **Time:** 17:30 - 19:15 (CEST)

## Participants

- Alessandro Olivero
- Claudio Lorina
- Francesco Cheinasso
- Francesco Torta
- Fulvio Risso
- Mirco Barone (invited)
- Gabriele Santi (invited)
- Davide Miola (invited)

## Agenda

- Proposal to add support for multi-tunnel in Liqo

## Minutes

Mirco Barone (Politecnico di Torino, Italy) presented his idea to introduce support for a multi-tunnel architecture in the Liqo network gateway.
In presence of multiple concurrent TCP/UDP connections, this technology can leverage ECMP to split the traffic among different tunnels, which almost linearly increases the aggregated bandwidth of the connection between two Liqo clusters (up to a threshold in which we hit the processing capability of the nodes).

This idea stems from previous studies done @POLITO, where that team identified the processing of a single CPU core as the main bottleneck; having multiple tunnels means that the traffic could be split among different CPU cores, hence improving the overall performance.

This proposal is fully compatible with current Linux kernels (does not require kernel-level patches), but it involves several modifications, such as:

- support for multiple UDP public ports (each tunnel must terminate on a different UDP port)
- support for an explicit configuration that determines how many tunnels are established between the two clusters
- support for multiple tunnels within the gateway
- support for monitoring across all tunnels (what about one tunnel works properly while some others are blocked, e.g., because of a wrong firewall configuration?)
- support for enhanced telemetry service which reports whether this feature is used or not

The meeting discussed extensively the proposal, and the maintainers gave several suggestions to finalize the work, which is currently in a PoC state.

## Resources

Slides are available in the current folder.
All the people involved agreed to continue the discussion on GitHub (on [Issue @3079](https://github.com/liqotech/liqo/issues/3079)), and to split the PoC in multiple, discrete patches, in order to make the changes, and the corresponding code review, more manageable.
