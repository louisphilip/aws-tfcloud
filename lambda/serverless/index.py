# https://docs.aws.amazon.com/lambda/latest/dg/with-sqs-create-package.html
from __future__ import print_function

def lambda_handler(event, context):
    for record in event['Records']:
        print("test")
        payload = record["body"]
        print(str(payload))