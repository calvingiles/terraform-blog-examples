resource aws_sqs_queue main-queue {
	name = "${var.name}-queue"
	redrive_policy = <<EOF
	{
		"deadLetterTargetArn": "${aws_sqs_queue.dead-letter-queue.arn}",
		"maxReceiveCount":4
	}
EOF
}
resource aws_sqs_queue dead-letter-queue {
	name = "${var.name}-dead-letter-queue"
}