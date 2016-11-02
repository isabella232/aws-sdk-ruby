# Aws module documentation.
module Aws
  # service gems
  autoload :ACM, 'aws-sdk-acm'
  autoload :APIGateway, 'aws-sdk-apigateway'
  autoload :ApplicationAutoScaling, 'aws-sdk-applicationautoscaling'
  autoload :ApplicationDiscoveryService, 'aws-sdk-applicationdiscoveryservice'
  autoload :AutoScaling, 'aws-sdk-autoscaling'
  autoload :Budgets, 'aws-sdk-budgets'
  autoload :CloudFormation, 'aws-sdk-cloudformation'
  autoload :CloudFront, 'aws-sdk-cloudfront'
  autoload :CloudHSM, 'aws-sdk-cloudhsm'
  autoload :CloudSearch, 'aws-sdk-cloudsearch'
  autoload :CloudSearchDomain, 'aws-sdk-cloudsearchdomain'
  autoload :CloudTrail, 'aws-sdk-cloudtrail'
  autoload :CloudWatch, 'aws-sdk-cloudwatch'
  autoload :CloudWatchEvents, 'aws-sdk-cloudwatchevents'
  autoload :CloudWatchLogs, 'aws-sdk-cloudwatchlogs'
  autoload :CodeCommit, 'aws-sdk-codecommit'
  autoload :CodeDeploy, 'aws-sdk-codedeploy'
  autoload :CodePipeline, 'aws-sdk-codepipeline'
  autoload :CognitoIdentity, 'aws-sdk-cognitoidentity'
  autoload :CognitoIdentityProvider, 'aws-sdk-cognitoidentityprovider'
  autoload :CognitoSync, 'aws-sdk-cognitosync'
  autoload :ConfigService, 'aws-sdk-configservice'
  autoload :DatabaseMigrationService, 'aws-sdk-databasemigrationservice'
  autoload :DataPipeline, 'aws-sdk-datapipeline'
  autoload :DeviceFarm, 'aws-sdk-devicefarm'
  autoload :DirectConnect, 'aws-sdk-directconnect'
  autoload :DirectoryService, 'aws-sdk-directoryservice'
  autoload :DynamoDB, 'aws-sdk-dynamodb'
  autoload :DynamoDBStreams, 'aws-sdk-dynamodbstreams'
  autoload :EC2, 'aws-sdk-ec2'
  autoload :ECR, 'aws-sdk-ecr'
  autoload :ECS, 'aws-sdk-ecs'
  autoload :EFS, 'aws-sdk-efs'
  autoload :ElastiCache, 'aws-sdk-elasticache'
  autoload :ElasticBeanstalk, 'aws-sdk-elasticbeanstalk'
  autoload :ElasticLoadBalancing, 'aws-sdk-elasticloadbalancing'
  autoload :ElasticLoadBalancingV2, 'aws-sdk-elasticloadbalancingv2'
  autoload :ElasticsearchService, 'aws-sdk-elasticsearchservice'
  autoload :ElasticTranscoder, 'aws-sdk-elastictranscoder'
  autoload :EMR, 'aws-sdk-emr'
  autoload :Firehose, 'aws-sdk-firehose'
  autoload :GameLift, 'aws-sdk-gamelift'
  autoload :Glacier, 'aws-sdk-glacier'
  autoload :IAM, 'aws-sdk-iam'
  autoload :ImportExport, 'aws-sdk-importexport'
  autoload :Inspector, 'aws-sdk-inspector'
  autoload :IoT, 'aws-sdk-iot'
  autoload :IoTDataPlane, 'aws-sdk-iotdataplane'
  autoload :Kinesis, 'aws-sdk-kinesis'
  autoload :KinesisAnalytics, 'aws-sdk-kinesisanalytics'
  autoload :KMS, 'aws-sdk-kms'
  autoload :Lambda, 'aws-sdk-lambda'
  autoload :LambdaPreview, 'aws-sdk-lambdapreview'
  autoload :MachineLearning, 'aws-sdk-machinelearning'
  autoload :MarketplaceCommerceAnalytics, 'aws-sdk-marketplacecommerceanalytics'
  autoload :MarketplaceMetering, 'aws-sdk-marketplacemetering'
  autoload :OpsWorks, 'aws-sdk-opsworks'
  autoload :RDS, 'aws-sdk-rds'
  autoload :Redshift, 'aws-sdk-redshift'
  autoload :Route53, 'aws-sdk-route53'
  autoload :Route53Domains, 'aws-sdk-route53domains'
  autoload :S3, 'aws-sdk-s3'
  autoload :ServiceCatalog, 'aws-sdk-servicecatalog'
  autoload :SES, 'aws-sdk-ses'
  autoload :SimpleDB, 'aws-sdk-simpledb'
  autoload :SMS, 'aws-sdk-sms'
  autoload :SNS, 'aws-sdk-sns'
  autoload :Snowball, 'aws-sdk-snowball'
  autoload :SQS, 'aws-sdk-sqs'
  autoload :SSM, 'aws-sdk-ssm'
  autoload :StorageGateway, 'aws-sdk-storagegateway'
  autoload :STS, 'aws-sdk-sts'
  autoload :Support, 'aws-sdk-support'
  autoload :SWF, 'aws-sdk-swf'
  autoload :WAF, 'aws-sdk-waf'
  autoload :WorkSpaces, 'aws-sdk-workspaces'
  # end service gems
end
