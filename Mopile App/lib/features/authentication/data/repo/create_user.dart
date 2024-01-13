import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:qayedny/features/authentication/data/models/User.dart';

Future<void> createUser(id, rUserProfile, rUserInfo, userType) async {
  try {
    final model = User(
        id: id,
        RUserProfile: rUserProfile,
        RUserInfo: rUserInfo,
        Wallet: 0,
        UserType: userType,
        RReviews: [],
        RHaveProjects: [],
        AppliedProjects: [],
        RHaveServices: [],
        RCouponsRedeemed: [],
        AppliedServices: []);
    final request = ModelMutations.create(model);
    final response = await Amplify.API.mutate(request: request).response;

    final createdUser = response.data;
    if (createdUser == null) {
      safePrint('errors: ${response.errors}');
      return;
    }
    safePrint('Mutation result: ${createdUser.id}');
  } on ApiException catch (e) {
    safePrint('Mutation failed: $e');
  }
}
