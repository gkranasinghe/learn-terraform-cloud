output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.arn
}

output "current_workspace_name" {
  value = terraform.workspace
}

variable "TFC_RUN_ID" {
  type    = string
  default = ""
}

output "remote_execution_determine" {
  value = "Remote run environment? %{if var.TFC_RUN_ID != ""}Yes%{else}No this is local%{endif}!"
}
