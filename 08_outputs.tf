output "Hello_world" {
    description = "Printing Hello world from output.tf"
    value = "Hello world....!"
}

output "aws_vpc_id" {
    description = "VPC ID is: "
    value = aws_vpc.vpc.id
}

output "aws_pub_subnet1_id" {
    description = "AWS Public Subnet ID"
    value = aws_subnet.public_subnets["public_subnet_1"].id
}

output "aws_pub_subnet2_id" {
    description = "AWS Public Subnet ID"
    value = aws_subnet.public_subnets["public_subnet_2"].id
}

output "aws_security_group_id" {
    description = "AWS Security group ID"
    value = [aws_security_group.my-new-security-group.id]
}

output "aws_ec2_test_instance_id" {
    description = "AWS EC2 test Instance ID"
    value = aws_instance.test_server.id
            
}
output "aws_ec2_test_instance_priv_ip" {
    description = "AWS EC2 test Instance Private IP"
    value = aws_instance.test_server.private_ip
            
}
output "aws_ec2_test_instance_pub_ip" {
    description = "AWS EC2 test Instance Public IP"
    value = aws_instance.test_server.public_ip
            
}
output "aws_ec2_test_instance_type" {
    description = "AWS EC2 test Instance type"
    value = aws_instance.test_server.instance_type
            
}

output "public_url" {
    description = "Public URL for our webserver"
    value = "https://${aws_instance.test_server.public_ip}:443/index.html"
}

output "vpc_information" {
    description = "VPC Information about Environment"
    value = "Your ${aws_vpc.vpc.tags.Environment} environment has an VPC ID of : ${aws_vpc.vpc.id}"
}

output "aws_ec2_stage_instance_id" {
    description = "AWS EC2 stage Instance ID"
    value = aws_instance.stage_server.id
}

# Additional Notes, We can execute below command to convert the output into json format.
[root@RockyLinux9 terraform_practice]# terraform output -json
