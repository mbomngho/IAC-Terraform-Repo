
resource "aws_vpc" "example" {
  cidr_block = var.cidr_block
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "terraform"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.0.0/24"
  availability_zone = data.aws_availability_zones.azs.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = local.vpc_id
  cidr_block = "10.0.1.0/24"
  availability_zone = data.aws_availability_zones.azs.names[1]

  tags = {
    Name = "private_subnet"
  }
}