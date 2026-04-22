module "vpc" {
  source = "./modules/vpc"

  project_name = "myapp"
  environment  = "dev"
}

module "ec2" {
  source = "./modules/ec2"

  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.subnet_id

  project_name = "myapp"
  environment  = "dev"

  key_name = "terraform_service"
}


module "s3" {
  source = "./modules/s3"

  bucket_name    = "sangram-app-frontend-96" # MUST be unique
  project_name   = "myapp"
  environment    = "dev"
  cloudfront_arn = module.cloudfront.cloudfront_arn
}

module "cloudfront" {
  source = "./modules/cloudfront"

  bucket_domain = module.s3.bucket_domain
  bucket_name   = module.s3.bucket_name

}
