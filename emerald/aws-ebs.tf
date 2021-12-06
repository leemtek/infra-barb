# resource "aws_volume_attachment" "main_ec2_ebs_att" {
#   device_name = "/dev/sdh"
#   volume_id   = aws_ebs_volume.main_ec2_ebs.id
#   instance_id = aws_instance.main_ec2.id
# }

# # Note: Don't use tags if volume_tags are used in aws_instance here per documentation.
# # - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#argument-reference
# resource "aws_ebs_volume" "main_ec2_ebs" {
#   availability_zone = aws_instance.main_ec2.availability_zone
#   size              = 30
# }