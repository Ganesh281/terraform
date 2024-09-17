variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is a AMI_ID of devops practice which is RHEL-09"
}


variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "tags" {
  type        = map
  default     = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Terraform = "true"
  }
}

variable "sg_name" {
    default = "allow_sshh"
}

variable "description" {
    default = "Allow port 22 number for ssh access"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}