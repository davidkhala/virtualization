# oVirt
founded by Red Hat as a community project on which Red Hat Virtualization is based
## oVirt engine
- backend: written in Java, runs on WildFly
- frontend is developed with GWT web toolkit
## oVirt node
- a server running Linux, with KVM hypervisor enabled and a VDSM (Virtual Desktop and Server Manager) daemon written in Python.
- Multiple nodes can be clustered from the oVirt engine webadmin portal to enhance RAS.
- 
VDSM
- VDSM controls all resources available to the node (compute, storage, networking) and virtual machines running on it
- Management of resources initiated from a webadmin portal are sent through the engine backend that issues appropriate calls to the VDSM daemon.
