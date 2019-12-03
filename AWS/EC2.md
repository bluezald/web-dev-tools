# EC2

## On-demand instance types
- pay as you go
- No contracts
- great for workload uncertainty

## Reserved Instances
- purchase compute capacity ahead of time
- 1-3 year commitment
- less flexible but cheaper
- best for steady-state workloads

- **tenancy** - determines who is the owner of the resource

## Spot Instances
- Unused resources with upto 90% discount
- good for additional resources but no the main resource

## Dedicated Instances
- typically used to meet regulatory requirements or hardware-based licenses

- A **hypervisor** (or virtual machine monitor, VMM) is a computer software, firmware or hardware that creates and runs virtual machines. A computer on which a hypervisor runs one or more virtual machines is called a host machine, and each virtual machine is called a guest machine.

## AMI (Amazon Machine Images)
- template where you can launch your instance from

## Placement Groups
- Allow you to specify how instances are placed on the underlying hardware
- Types:
  - **Cluster** - allow you to group instances in a single `AZs`
  - **Partition** - spread across logical partitions
  - **Spread** - offers hardware isolation amongst instances

## Storage Volumes
- can be `instance store` or `EBS types`
- **EBS** - network-attached storage
  - can only be attached to one instance at a time
- **Instance store** - good for cache or temporary storeage
- **EBS Snapshots** - point in time
