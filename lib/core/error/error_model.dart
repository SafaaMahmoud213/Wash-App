class ErrorModel {
  final int responseCode;
  final String responseStatus;
  final String responseMessage;

  ErrorModel({
    required this.responseCode,
    required this.responseStatus,
    required this.responseMessage,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      responseCode: jsonData['ResponseCode'],
      responseStatus: jsonData['ResponseStatus'],
      responseMessage: jsonData['ResponseMessage'],
    );
  }
}
