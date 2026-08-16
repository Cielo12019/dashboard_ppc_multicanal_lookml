connection: "ppc_multicanal_connection"

include: "/views/ppc_multicanal.view.lkml"
include: "/dashboards/*.dashboard.lookml"

explore: ppc_multicanal {
  label: "PPC Multicanal"
  description: "Modelo para el dashboard PPC Multicanal."
}
