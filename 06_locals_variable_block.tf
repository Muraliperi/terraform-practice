locals {
  dev_team = "dev-ops team"
  prod_team = "prod-ops team"
  stage_team = "stage-ops team"
  test_team = "test-ops team"
  dev_owner = "devopsteam@abc.com"
  prod_owner = "prodopsteam@abc.com"  
  stage_owner = "stageopsteam@abc.com"  
  test_owner = "prodopsteam@abc.com"
  application = "Terraform Application"
  dev_server_name = "ec2-${var.variables_dev_environment}-${var.variables_availability_zone}"
  prod_server_name = "ec2-${var.variables_prod_environment}-${var.variables_availability_zone}"
  test_server_name = "ec2-${var.variables_test_environment}-${var.variables_availability_zone}" 
  stage_server_name = "ec2-${var.variables_stage_environment}-${var.variables_availability_zone}"
  dev_environment = "${var.variables_dev_environment}-env"
  prod_environment = "${var.variables_prod_environment}-env"
  test_environment = "${var.variables_test_environment}-env"
  stage_environment = "${var.variables_stage_environment}-env"
}

resource "aws_instance" "stage_server" {
  ami           = data.aws_ami.rhel_ami.id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnets["public_subnet_1"].id
  vpc_security_group_ids = [aws_security_group.my-new-security-group.id]
  tags = {
    Name = local.stage_server_name
    Terraform = true
    Environment = local.stage_environment
    Team = local.stage_team
    Owner = local.stage_owner
    Application = local.application
  }
}
