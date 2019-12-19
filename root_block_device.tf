resource"aws_instance" "example"{
'''''
root_block_device{

volume_size =16
volume_type ="gp2"
delete_on_termintion = true # whether to delete the root block device when the instance het terminatedor not

}
} 