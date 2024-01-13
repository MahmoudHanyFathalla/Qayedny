import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:qayedny/features/authentication/data/models/UserInfo.dart';

Future<UserInfo?> createUserInfo({name, email, password, mobile}) async {
  try {
    final model = UserInfo(
      Name: name,
      Email: email,
      Password: password,
      Mobile: mobile,
      Dateofbirth: null,
    );
    final request = ModelMutations.create(model);
    final response = await Amplify.API.mutate(request: request).response;

    final createdUserInfo = response.data;
    if (createdUserInfo == null) {
      safePrint('errors: ${response.errors}');
      return null;
    }
    safePrint('Mutation result: ${createdUserInfo.id}');
    return createdUserInfo;
  } on ApiException catch (e) {
    safePrint('Mutation failed: $e');
  }
  return null;
}
