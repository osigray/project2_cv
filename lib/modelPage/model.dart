class CVDetails {
  String fullName;
  String slackName;
  String githubHandle;
  String personalBio;

  CVDetails({
    required this.fullName,
    required this.slackName,
    required this.githubHandle,
    required this.personalBio,
  });

  void update(Map<String, String> updatedDetails) {
    fullName = updatedDetails['fullName'] ?? fullName;
    slackName = updatedDetails['slackName'] ?? slackName;
    githubHandle = updatedDetails['githubHandle'] ?? githubHandle;
    personalBio = updatedDetails['personalBio'] ?? personalBio;
  }
}
