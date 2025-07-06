output "load_balancer_ip" {
  value = one(yandex_lb_network_load_balancer.nlb.listener[*].external_address_spec[*].address)
}

output "vm_ips" {
  value = yandex_compute_instance.vm[*].network_interface[0].nat_ip_address
}