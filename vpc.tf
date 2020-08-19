#
# VPC Resources
#  * VPC
#  * Subnets
#  * Internet Gateway
#  * Route Table
#

resource "aws_vpc" "example-gitops" {
  cidr_block = "10.0.0.0/16"
  tags = map(
    "Name", "example-gitops-node",
    "kubernetes.io/cluster/${var.cluster-name}", "shared",
  )
}

resource "aws_subnet" "example-gitops" {
  count = 2
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  cidr_block              = "10.0.${count.index}.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.example-gitops.id
  tags = map(
    "Name", "example-gitops-node",
    "kubernetes.io/cluster/${var.cluster-name}", "shared",
  )
}

resource "aws_internet_gateway" "example-gitops" {
  vpc_id = aws_vpc.example-gitops.id
  tags = {
    Name = "example-gitops"
  }
}

resource "aws_route_table" "example-gitops" {
  vpc_id = aws_vpc.example-gitops.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example-gitops.id
  }
}

resource "aws_route_table_association" "example-gitops" {
  count = 2
  subnet_id      = aws_subnet.example-gitops.*.id[count.index]
  route_table_id = aws_route_table.example-gitops.id
}
