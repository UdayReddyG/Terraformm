variable "instance_names" {
  type        = list(string)
  default     = ["mysql","backend","frontend"]
  description = "description"
}
variable "domain_names" {
  type        = list(string)
  default     = ["mysql.the4teen.info","backend.the4teen.info","the4teen.info"]
  description = "description"
}
variable "zone_id" {
  type        = string
  default     = "Z00138007NK9E8UP8WCK"
  description = "description"
}
