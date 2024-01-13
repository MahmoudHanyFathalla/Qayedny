import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:qayedny/features/authentication/data/models/User_profile_model.dart';

Future<UserProfileModel?> createUserProfile() async {
  try {
    final model =
        UserProfileModel(ProfilePicture: null, WorkedHours: 0, About: "");
    final request = ModelMutations.create(model);
    final response = await Amplify.API.mutate(request: request).response;

    final createdUserProfile = response.data;
    if (createdUserProfile == null) {
      safePrint('errors: ${response.errors}');
      return null;
    }
    safePrint('User Profile Mutation result: ${createdUserProfile.id}');
    return createdUserProfile;
  } on ApiException catch (e) {
    safePrint('Mutation failed: $e');
  }
  return null;
}
