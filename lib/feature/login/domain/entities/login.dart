import 'package:equatable/equatable.dart';

class Login extends Equatable {
  Login({
    required this.status,
    required this.message,
    required this.data,
  });

  int status;
  String message;
  Data data;

  @override
  List<Object?> get props => [status, message, data];
}

class Data {
  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.contactDetails,
    required this.password,
    required this.userType,
    required this.fmAdminDetails,
    required this.createdBy,
    required this.status,
    required this.serviceTypesIds,
    required this.contractorCertificates,
    required this.approvedStatus,
    required this.createdAt,
    required this.updatedAt,
    required this.fmModuleAccess,
    required this.v,
    required this.resetPasswordToken,
    required this.refreshTokens,
    required this.address,
    required this.company,
    required this.profileImage,
    required this.deletedAt,
    required this.assignToWarehouse,
    required this.authTokens,
  });

  String id;
  String firstName;
  String lastName;
  String email;
  ContactDetails contactDetails;
  String password;
  int userType;
  FmAdminDetails fmAdminDetails;
  String createdBy;
  int status;
  List<String> serviceTypesIds;
  List<dynamic> contractorCertificates;
  int approvedStatus;
  int createdAt;
  int updatedAt;
  List<dynamic> fmModuleAccess;
  int v;
  dynamic resetPasswordToken;
  String refreshTokens;
  String address;
  String company;
  String profileImage;
  dynamic deletedAt;
  List<dynamic> assignToWarehouse;
  List<AuthToken> authTokens;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        contactDetails: ContactDetails.fromJson(json["contact_details"]),
        password: json["password"],
        userType: json["user_type"],
        fmAdminDetails: FmAdminDetails.fromJson(json["fm_admin_details"]),
        createdBy: json["created_by"],
        status: json["status"],
        serviceTypesIds:
            List<String>.from(json["service_types_ids"].map((x) => x)),
        contractorCertificates:
            List<dynamic>.from(json["contractor_certificates"].map((x) => x)),
        approvedStatus: json["approved_status"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        fmModuleAccess:
            List<dynamic>.from(json["fm_module_access"].map((x) => x)),
        v: json["__v"],
        resetPasswordToken: json["reset_password_token"],
        refreshTokens: json["refresh_tokens"],
        address: json["address"],
        company: json["company"],
        profileImage: json["profile_image"],
        deletedAt: json["deleted_at"],
        assignToWarehouse:
            List<dynamic>.from(json["assign_to_warehouse"].map((x) => x)),
        authTokens: List<AuthToken>.from(
            json["auth_tokens"].map((x) => AuthToken.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "contact_details": contactDetails.toJson(),
        "password": password,
        "user_type": userType,
        "fm_admin_details": fmAdminDetails.toJson(),
        "created_by": createdBy,
        "status": status,
        "service_types_ids": List<dynamic>.from(serviceTypesIds.map((x) => x)),
        "contractor_certificates":
            List<dynamic>.from(contractorCertificates.map((x) => x)),
        "approved_status": approvedStatus,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "fm_module_access": List<dynamic>.from(fmModuleAccess.map((x) => x)),
        "__v": v,
        "reset_password_token": resetPasswordToken,
        "refresh_tokens": refreshTokens,
        "address": address,
        "company": company,
        "profile_image": profileImage,
        "deleted_at": deletedAt,
        "assign_to_warehouse":
            List<dynamic>.from(assignToWarehouse.map((x) => x)),
        "auth_tokens": List<dynamic>.from(authTokens.map((x) => x.toJson())),
      };
}

class AuthToken {
  AuthToken({
    required this.token,
    required this.tokenExpiresAt,
  });

  String token;
  int tokenExpiresAt;

  factory AuthToken.fromJson(Map<String, dynamic> json) => AuthToken(
        token: json["token"],
        tokenExpiresAt: json["token_expires_at"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "token_expires_at": tokenExpiresAt,
      };
}

class ContactDetails {
  ContactDetails({
    required this.dialCode,
    required this.countryCode,
    required this.mobileNumber,
  });

  String dialCode;
  String countryCode;
  String mobileNumber;

  factory ContactDetails.fromJson(Map<String, dynamic> json) => ContactDetails(
        dialCode: json["dial_code"],
        countryCode: json["country_code"],
        mobileNumber: json["mobile_number"],
      );

  Map<String, dynamic> toJson() => {
        "dial_code": dialCode,
        "country_code": countryCode,
        "mobile_number": mobileNumber,
      };
}

class FmAdminDetails {
  FmAdminDetails({
    required this.id,
    required this.status,
  });

  String id;
  int status;

  factory FmAdminDetails.fromJson(Map<String, dynamic> json) => FmAdminDetails(
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
      };
}
