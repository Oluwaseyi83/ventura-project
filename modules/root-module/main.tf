module "vpc" {
  source = "../child-modules/vpc"

}

module "ec2" {
  source                = "../child-modules/servers"
  security_group_id     = module.aws_security_group.security_group_id

  depends_on = [ module.aws_security_group ]
}

module "aws_security_group" {
  source     = "../child-modules/security-groups"
  vpc_id     = module.vpc.vpc_id


  depends_on = [module.vpc]

}



