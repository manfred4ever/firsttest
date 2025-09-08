 

resource "aws_instance" "aws_instance1" {
    ami           = "ami-0779c82fbb81e731c" # Replace with a valid AMI ID for ap-southeast-1
    instance_type = "t3.small"
  
 
 
    tags = {
        Name = "aws_instancews_1"

    }
}
     
resource "tls_private_key" "AWS_instance1_key" {
# Generates a secure private key using TLS protocol
algorithm = "RSA"
rsa_bits  = 4096

}


resource "aws_key_pair" "aws_instance1" {
key_name   = "aws_instance1_key"
public_key = tls_private_key.AWS_instance1_key.public_key_openssh
}

