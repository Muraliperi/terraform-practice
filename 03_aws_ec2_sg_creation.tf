Terraform Data Block - To Lookup Latest Ubuntu 20.04 AMI Image
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

# Terraform Resource Block - To Build EC2 instance in Public Subnet
resource "aws_instance" "web_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnets["public_subnet_1"].id
  tags = {
    Name = "Ubuntu EC2 Server"
  }
}

resource "aws_instance" "rhel_server" {
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  subnet_id     = "subnet-05bc048a9cb02c3a5"
  vpc_security_group_ids = ["sg-0db8234d2a37332a6"]
  tags = {
    Name = "RHEL9 EC2 Server"
    Terraform = true
  }
}

resource "aws_security_group" "my-new-security-group" {
    name = "web_server_inbound"
    description = "Allow inbound on tcp/443"
    vpc_id = aws_vpc.vpc.id
    
    ingress {
        description = "Allow 443 from Internet"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        name = "Web_server_inbound"
        purpose = "Intro to Resource Blocks Lab"
    }
}
