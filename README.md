# AWS AppSync Playground

This playground is based on AWS AppSync

## GraphQL schema, data sources and resolvers
[Data sources and resolvers tutorial](https://docs.aws.amazon.com/appsync/latest/devguide/tutorial-dynamodb-resolvers.html#aws-appsync-tutorial-dynamodb-resolvers)

## iOS app with AppSync integration
[Tutorial on general iOS app development](https://docs.aws.amazon.com/appsync/latest/devguide/building-a-client-app-ios-overview.html)

### Installation:
- Install AWS Apmlify: `npm install -g @aws-amplify/cli`

Already in the project, but when new it's good to know the following:
- `amplify init` has been already done, but you should know that it exists
- Download and generate your API from AWS AppSync `amplify add codegen --apiId xxx-yy-zz`

### Config
Remember to put the AppSync API-Key into. You can generate a key in the AWS AppSync console.

```
/amplify/#current-cloud-backend/amplify-meta.json
/amplify/backend/amplify-meta.json
/awsconfiguration.json
```

### Development
In general for iOS development you will develop a regular XCode project. Since Pods are used open the project with `PostsApp.xcworkspace` instead of `PostsApp.xcodeproj`.

If you make any GraphQL schema changes on the AppSync server you have to run `amplify codegen generate` in your project. If you made changes locally you have to push to the AppSync server `amplify push`. To check the status just hit `amplify status`.

## Files in general
```
/AmazonDunamoDBCFTemplate.yaml Cloud Formation template for AppSync, DunamoDB and Role/Policy generation.
/apps client app implementations
/LambdaCFTemplate.yaml super simple AWS Lambda test function
/README.md Hi!
/requests GraphQL requests
/request-mapping-resolver mainly GraphQL to DynamoDB mapping resolver
/schema.graphsql This is the GraphsQL schema for the AppSync schema definition.
```
