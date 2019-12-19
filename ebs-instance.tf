
resource"aws_instance" "example"{


}
resource "aws_ebs_volume" "ebs_volume-1" {
  availability_zone = "us-west-2a" (Required) The Aavalability Zones where the EBS volume will exist.
  size              =  //specify size(Optional) The size of the drive in GiBs.
   type ="gp2" #general purpose storage for archieve data
  tags = {
    Name = "HelloWorld"
	(Optional) A mapping of tags to assign to the resource.
  }
}

resource "aws_ebs_attachment" "ebs_volume-1_attachment" {#it attached ebs volume to ec2 instance

device name ="dev/xvch"/ device name
volume_id = "${aws_ebs_volume.ebs_volume-1.id}" #volume id it reffers  to ebs volume
instance_id = "${aws_instance.example.id}" #  instance id 
}/all are linked to the resources to getter


NOTE: One of size or snapshot_id is required
 when specifying an EBS volume.

extra volume of 
