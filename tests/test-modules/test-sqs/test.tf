provider aws {
	region = "eu-west-1"
}

module "mut-queue" {
	source = "../../../modules/sqs"

	name = "mut"
}
output mut-queue-details {
	value = "${module.mut-queue.queue-details}"
}