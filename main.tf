module "jx" {
  source             = "github.com/jenkins-x/terraform-azurerm-jx"
  version_stream_url = "https://github.com/jenkins-x/jxr-versions.git"
  is_jx2             = false
  jx_git_url         = local.jx_git_url
  jx_bot_username    = local.jx_bot_username
  jx_bot_token       = var.jx_bot_token
}

output "connect" {
  description = "Connect to cluster"
  value       = module.jx.connect
}

output "jx_requirements" {
  description = "jx-requirements file"
  value       = module.jx.jx_requirements
}

output "next_install" {
  description = "Follow instructions to enable Jenkins X install via GitOps"
  value       = "https://jenkins-x.io/docs/v3/guides/operator"
}
