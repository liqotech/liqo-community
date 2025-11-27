# Liqo Community Meeting Minutes

## Meeting Details

- **Date:** 2025-11-24
- **Time:** 17:30 - 18:30 (CEST)

## Agenda

- Open Agenda
- Date of next meeting
- AOB

## Minutes

This meeting was scheduled with an "open agenda", given that several people are working on new features and/or extending Liqo, and the maintainers feel that the best way to provide feedback and guidance at this stage is to setup an interactive video call instead of endless discussions on Slack.

Given that the discussion is mainly oriented to help new contributors on their issues, maintainers decided not to record the event as it would not be very helpful for the broader community.

Hence, we summarize here what has been discussed.

### 1. Questions from Riccardo Tornesello

- Discussion why finalizers are not used in the gateways. **Answer**: Because there can be some racing conditions when the gateway pod is deleted, and some resources are not removed correctly.
[PR #2994](https://github.com/liqotech/liqo/pull/2994) was a try to solve this issue, but for lack of time this code was never finalized properly. Volunteers are welcome here.
- Riccardo presented his [PR #3155](https://github.com/liqotech/liqo/pull/3155): it adds support for _named sets_ for traffic filtering, which decreases the overhead when a lot of IP addresses are involved in the filter.
- Riccardo presented also his [PR #3144](https://github.com/liqotech/liqo/pull/3144), which allows to filter by connection tracking state.
**Comment**: all good; Liqo will finalize version 1.0.2 soon, then it will merge security features ([PR #2966](https://github.com/liqotech/liqo/pull/2966)), and then this PR.
This means that this patch will be available in the upcoming Liqo 1.1.
- Reporting an apparent pod-to-pod connectivity issue with Calico, thanks to a testing tool that he made in order to check whether security policies are working properly in a Liqo-based cluster.
In particular, when the traffic from a ClusterA reaches the GW of ClusterB, is not forwarded to the destination pod (unless it runs in the same node of the ClusterB_GW), and it appears to be lost somewhere.
**Comments**: First, there is a feature in liqoctl, "liqoctl test network", which can be used to test the network; so, probably we do not need to create another tool to test connectivity.
With respect for the specific problem mentioned, the problem is that Calico applies natting rules for some of the pod-to-pod traffic.
Since a Geneve tunnel cannot cross a NAT, in the above case the intra-cluster network does not work.
Adding the following configuration options in Liqo (at install time, on the cluster that uses Calico) may help solving the issues:

        fullMasquerade: true
        gatewayMasqueradeBypass: true

### 2. Questions from Kazem Bigdeli

- Kazem presented his [PR #3147](https://github.com/liqotech/liqo/pull/3147) that proposes a way to know the _version_ of another Liqo cluster. Kazem needs this because he would like to create a software which seamlessly upgrades the Liqo software running in a cluster, and he needs to know whether the peering with another cluster will still work after the upgrade.
**Suggestion**: create a small resource, such as ''info'', which is replicated between clusters.
This requires a new small controller, and the proper (minimal) permissions; in addition, it would be nice to add this information also in the foreign cluster resource, which is a sort of _summary board_ that contains all the information related to the other cluster, avoiding people to get access to each single (original) resource because most of the information they need is there.

### 3. Questions from Gabriele Santi

- Currently working to support a second inter-cluster tunneling technology in Liqo and he is facing problems with a Geneve tunnel.
**Discussion**: do not use Geneve as tunnel technology between clusters, as it does not support NATs, and NATs are so common in Kubernetes (between clusters).
Better to use another technology such as OpenVPN.

### 4. Status of the project: patch release 1.0.2 and next release 1.1

The blocking issue for the new patch release was the CI/CD pipeline of Liqo that was no longer working (hence, features could not be tested properly), but this has been solved last week by Francesco Cheinasso.
The merging of pending contributions is in progress; the patch release 1.0.2 is expected very soon, likely at the beginning of December, and it will consist mainly of bug fixes.

Release 1.1 is expected next year, but timing has not be decided yet.

### 5. Date of next meeting

Consensus for December 9th.
Confirm the "Open Agenda" format, which looks ok at this stage.

## Resources

- No, slides, no recording this time. Only minutes.
