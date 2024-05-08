import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/base/repositories/base_repository.dart';
import 'package:ecommerce/core/services/error/failure.dart';
import 'package:ecommerce/core/services/network/api_client.dart';
import 'package:ecommerce/core/services/network/endpoints.dart';
import 'package:ecommerce/modules/account/models/responses/user_model.dart';

class AccountRepo extends BaseRepository {
  final ApiClient _apiClient;

  AccountRepo(this._apiClient, super.networkInfo);

  Future<Either<Failure, UserModel>> getProfile() async {
    return super.call<UserModel>(
      httpRequest: () => _apiClient.get(url: EndPoints.profileData),
      successReturn: (data) => UserModel.fromJson(data),
    );
  }
}
