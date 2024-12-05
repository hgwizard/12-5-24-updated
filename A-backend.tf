
terraform {
    backend "s3" {
        bucket = "armageddonconq"     #name of the s3 buckect  
        key = "armageddon"            #name of the file 
        region = "ap-northeast-1"      
}
}


# resource "aws_ec2_transit_gateway_vpc_attachment" "example" {
#   subnet_ids         = [aws_subnet.example.id]
#   transit_gateway_id = aws_ec2_transit_gateway.example.id
#   vpc_id             = aws_vpc.example.id
# }

#delete 11-15

