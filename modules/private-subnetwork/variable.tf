variable "private_subnets" {
    type = list(object({
      subnet_name = string
      subnet_ip = string
      subnet_region = string
    })) 
}