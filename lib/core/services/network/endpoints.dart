class EndPoints {
  // Account
  static const String addServiceProvider = "/api/servicesProviderss";

  // Auth
  static const String init = "/api/auth/init";
  static const String signIn = "/api/auth/signin";

  // General
  static const String uploadFile = "/file/upload";

  // Invitations
  static const String invite = "/api/my/invite";
  static const String invitationsOut = "/api/my/invitation-out";
  static const String approveInvitation = "/api/my/invite-approve";
  static const String deleteInvitation = "/api/invitations";
  static const String getServiceProviders = "/api/servicesProviderss/search";
  static String getServiceProviderById(int id) => "/api/servicesProviderss/$id";

  // Profile
  static const String myInfo = "/api/my/my-info";
  static String updateUser(int id) => "/api/users/$id";
  static const String myProfiles = "/api/my/profiless";
  static const String deleteProfile = "/api/profiless";
  static const String getProfileById = "/api/profiless";

  // Regions
  static const String getCities = "/api/citys";
  static const String getAreasByCityId = "/api/areas/byCity";

  // Manager real estate
  static const String invitationsIn = "/api/my/invitation-in";
  static const String searchInvitations = "/api/invitations/search";
  static String acceptInvitation(int id) => "/api/my/invite-accept/$id";
  static String declineInvitation(int id) => "/api/my/invite-decline/$id";
  static const String getManagerProperties = "/api/propertiess/for-manager-search";
  static const String getAllManagerProperties = "/api/propertiess/for-manager";
  static const String getPropertyById = "/api/propertiess";
  static const String getPropertyPosts = "/api/postss/search";
  static const String deletePost = "/api/postss";

  // Manager requests
  static const String getManagerRequests = "/api/requestss/search";

  // Requests
  static const String getMyRequests = "/api/requestss/by-profile";
  static const String getRequestById = "/api/requestss";
  static const String getRequestLogs = "/api/requestsLogs/byRequest";
  static const String changeRequestStatus = "/api/requestss";

  // Posts
  static const String createPost = "/api/postss";
  static const String addComment = "/api/postsCommentss";
  static const String getPostById = "/api/postss";
  static const String getPostsByPropertyId = "/api/postss/forProperties";
  static const String getPostComments = "/api/postsCommentss/byPost";

  // Property
  static const String property = "/api/propertiess";
  static const String getPropertyProfiles = "/api/my/profiless-in-properties";

  // Services
  static const String getServicesByPropertyId = "/api/my/services-in-properties";
  static const String getServicesByServiceProviderId = "/api/servicess/byProvider";
  static const String getServiceById = "/api/servicess";
  static const String requestService = "/api/requestss";
  static const String getServiceQuestions = "/api/servicesQuestionss/by-services";
  static const String answerQuestion = "/api/requestsAnswerss";

  // Subscription
  static const String subscribe = "/api/subscriptionss";
  static const String getMySubscription = "/api/my/subscriptions";

  // Employees
  static const String getEmployees = "/api/employees/ByProvider";
}
