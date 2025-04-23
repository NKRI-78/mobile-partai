class ExtractKtpModel {
  int status;
  bool error;
  String message;
  ExtractKtpData data;

  ExtractKtpModel({
    required this.status,
    required this.error,
    required this.message,
    required this.data,
  });

  factory ExtractKtpModel.fromJson(Map<String, dynamic> json) => ExtractKtpModel(
    status: json["status"],
    error: json["error"],
    message: json["message"],
    data: ExtractKtpData.fromJson(json["data"]),
  );
}

class ExtractKtpData {
  ExtractResult result;
  bool error;
  ExtractKtpUsage usage;
  String serviceTier;

  ExtractKtpData({
    required this.result,
    required this.error,
    required this.usage,
    required this.serviceTier,
  });

  factory ExtractKtpData.fromJson(Map<String, dynamic> json) => ExtractKtpData(
    result: ExtractResult.fromJson(json["result"]),
    error: json["error"],
    usage: ExtractKtpUsage.fromJson(json["usage"]),
    serviceTier: json["service_tier"],
  );
}

class ExtractResult {
  String nik;
  String name;
  String placeDateBirth;
  String gender;
  String address;
  String rtRw;
  String village;
  String district;
  String religion;
  String status;
  String job;
  String country;
  String expired;

  ExtractResult({
    required this.nik,
    required this.name,
    required this.placeDateBirth,
    required this.gender,
    required this.address,
    required this.rtRw,
    required this.village,
    required this.district,
    required this.religion,
    required this.status,
    required this.job,
    required this.country,
    required this.expired,
  });

  factory ExtractResult.fromJson(Map<String, dynamic> json) => ExtractResult(
    nik: json["nik"],
    name: json["name"],
    placeDateBirth: json["place_date_birth"],
    gender: json["gender"],
    address: json["address"],
    rtRw: json["rt/rw"],
    village: json["village"],
    district: json["district"],
    religion: json["religion"],
    status: json["status"],
    job: json["job"],
    country: json["country"],
    expired: json["expired"],
  );
}

class ExtractKtpUsage {
  int promptTokens;
  int completionTokens;
  int totalTokens;
  PromptTokensDetails promptTokensDetails;
  CompletionTokensDetails completionTokensDetails;

  ExtractKtpUsage({
    required this.promptTokens,
    required this.completionTokens,
    required this.totalTokens,
    required this.promptTokensDetails,
    required this.completionTokensDetails,
  });

  factory ExtractKtpUsage.fromJson(Map<String, dynamic> json) => ExtractKtpUsage(
    promptTokens: json["prompt_tokens"],
    completionTokens: json["completion_tokens"],
    totalTokens: json["total_tokens"],
    promptTokensDetails: PromptTokensDetails.fromJson(json["prompt_tokens_details"]),
    completionTokensDetails: CompletionTokensDetails.fromJson(json["completion_tokens_details"]),
  );
}

class CompletionTokensDetails {
  int reasoningTokens;
  int audioTokens;
  int acceptedPredictionTokens;
  int rejectedPredictionTokens;

  CompletionTokensDetails({
    required this.reasoningTokens,
    required this.audioTokens,
    required this.acceptedPredictionTokens,
    required this.rejectedPredictionTokens,
  });

  factory CompletionTokensDetails.fromJson(Map<String, dynamic> json) => CompletionTokensDetails(
    reasoningTokens: json["reasoning_tokens"],
    audioTokens: json["audio_tokens"],
    acceptedPredictionTokens: json["accepted_prediction_tokens"],
    rejectedPredictionTokens: json["rejected_prediction_tokens"],
  );
}

class PromptTokensDetails {
  int cachedTokens;
  int audioTokens;

  PromptTokensDetails({
    required this.cachedTokens,
    required this.audioTokens,
  });

  factory PromptTokensDetails.fromJson(Map<String, dynamic> json) => PromptTokensDetails(
    cachedTokens: json["cached_tokens"],
    audioTokens: json["audio_tokens"],
  );
}