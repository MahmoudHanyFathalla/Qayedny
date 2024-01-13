const amplifyconfig = '''{
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "Qayedny": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://mp5ktwxbjjg2tkh2kyiqiq6hgy.appsync-api.eu-north-1.amazonaws.com/graphql",
                    "region": "eu-north-1",
                    "authorizationType": "API_KEY",
                    "apiKey": "da2-d5rn7tqkmvcabbnnn52hxauzg4"
                }
            }
        }
    },
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://mp5ktwxbjjg2tkh2kyiqiq6hgy.appsync-api.eu-north-1.amazonaws.com/graphql",
                        "Region": "eu-north-1",
                        "AuthMode": "API_KEY",
                        "ApiKey": "da2-d5rn7tqkmvcabbnnn52hxauzg4",
                        "ClientDatabasePrefix": "Qayedny_API_KEY"
                    },
                    "Qayedny_AWS_IAM": {
                        "ApiUrl": "https://mp5ktwxbjjg2tkh2kyiqiq6hgy.appsync-api.eu-north-1.amazonaws.com/graphql",
                        "Region": "eu-north-1",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "Qayedny_AWS_IAM"
                    }
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "eu-north-1:6b33f531-c12f-464c-bebc-9a834037d0bc",
                            "Region": "eu-north-1"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "eu-north-1_h4fkSjS1J",
                        "AppClientId": "6rngjld8no1gua5k3g2licdt2k",
                        "Region": "eu-north-1"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH",
                        "socialProviders": [],
                        "usernameAttributes": [
                            "EMAIL"
                        ],
                        "signupAttributes": [
                            "NAME",
                            "EMAIL",
                            "PHONE_NUMBER"
                        ],
                        "passwordProtectionSettings": {
                            "passwordPolicyMinLength": 6,
                            "passwordPolicyCharacters": []
                        },
                        "mfaConfiguration": "OFF",
                        "mfaTypes": [
                            "SMS"
                        ],
                        "verificationMechanisms": [
                            "EMAIL"
                        ]
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "qayedny-storage233519-deve",
                        "Region": "eu-north-1"
                    }
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "qayedny-storage233519-deve",
                "region": "eu-north-1",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';
