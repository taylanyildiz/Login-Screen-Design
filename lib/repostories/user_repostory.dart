class UserRepoStory {
  UserRepoStory._();

  static UserRepoStory? _userRepoStory;

  static getInstance() {
    if (_userRepoStory == null) {
      _userRepoStory = UserRepoStory._();
    }
    return _userRepoStory;
  }

  /// Get user
  static Future getUserById(userId) async {}
}
