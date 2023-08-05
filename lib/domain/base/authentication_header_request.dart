class AuthenticationHeaderRequest {
  String accesToken;
  AuthenticationHeaderRequest(
    this.accesToken,
  );

  Map<String, String> toHeader() {
    return <String, String>{
      'Authorization': "Bearer $accesToken",
    };
  }
}