#root

module "vpc" {
  source = "./VPC"
}

module "ec2" {
  source = "./AWS-web"
  sn = module.vpc.pb_sn
  sg = module.vpc.sg

}