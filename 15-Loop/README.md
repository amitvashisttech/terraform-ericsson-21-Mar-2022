Count Example : 
==============>
resource "aws_instance" "frontend" {  
count = 5 
ami = image-123 
type = t1.micro 
depends_on = [aws_instance.backend]
}

resource "aws_instance" "backend" {  
count = 1
ami = image-123 
type = t1.micro 
}





For Example: 
============>
resource "aws_instance" "frontend" {
for_each = local.ec2   
  ami = each.value.ami
  type = each.value.type 
depends_on = [aws_instance.backend]
}


local { 
  ec2 = { 

a { 
  ami = image-123
  type = t1.micro
}

b { 
  ami = image-432
  type = t2.micro
}


c { 
  ami = image-789
  type = x1.large

} 
}
}
