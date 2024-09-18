variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "description"
}
variable "instance" {
  type        = string
  default     = "t2.micro"
  description = "description"
}
 
variable "environment" {
  type        = string
  default     = "dev"
  description = "description"
}
