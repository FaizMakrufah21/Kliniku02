/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Doctor implements _i1.SerializableModel {
  Doctor._({
    this.id,
    required this.employeeId,
    required this.name,
    required this.specializationId,
    required this.poliId,
    required this.phone,
    required this.licenseNumber,
    required this.experienceYears,
    required this.consultationFee,
    required this.teleconsultFee,
    this.bio,
    this.profileImageUrl,
    this.rating,
    this.totalReviews,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Doctor({
    int? id,
    required String employeeId,
    required String name,
    required int specializationId,
    required int poliId,
    required String phone,
    required String licenseNumber,
    required int experienceYears,
    required double consultationFee,
    required double teleconsultFee,
    String? bio,
    String? profileImageUrl,
    double? rating,
    int? totalReviews,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DoctorImpl;

  factory Doctor.fromJson(Map<String, dynamic> jsonSerialization) {
    return Doctor(
      id: jsonSerialization['id'] as int?,
      employeeId: jsonSerialization['employeeId'] as String,
      name: jsonSerialization['name'] as String,
      specializationId: jsonSerialization['specializationId'] as int,
      poliId: jsonSerialization['poliId'] as int,
      phone: jsonSerialization['phone'] as String,
      licenseNumber: jsonSerialization['licenseNumber'] as String,
      experienceYears: jsonSerialization['experienceYears'] as int,
      consultationFee: (jsonSerialization['consultationFee'] as num).toDouble(),
      teleconsultFee: (jsonSerialization['teleconsultFee'] as num).toDouble(),
      bio: jsonSerialization['bio'] as String?,
      profileImageUrl: jsonSerialization['profileImageUrl'] as String?,
      rating: (jsonSerialization['rating'] as num?)?.toDouble(),
      totalReviews: jsonSerialization['totalReviews'] as int?,
      status: jsonSerialization['status'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String employeeId;

  String name;

  int specializationId;

  int poliId;

  String phone;

  String licenseNumber;

  int experienceYears;

  double consultationFee;

  double teleconsultFee;

  String? bio;

  String? profileImageUrl;

  double? rating;

  int? totalReviews;

  String status;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Doctor]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Doctor copyWith({
    int? id,
    String? employeeId,
    String? name,
    int? specializationId,
    int? poliId,
    String? phone,
    String? licenseNumber,
    int? experienceYears,
    double? consultationFee,
    double? teleconsultFee,
    String? bio,
    String? profileImageUrl,
    double? rating,
    int? totalReviews,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Doctor',
      if (id != null) 'id': id,
      'employeeId': employeeId,
      'name': name,
      'specializationId': specializationId,
      'poliId': poliId,
      'phone': phone,
      'licenseNumber': licenseNumber,
      'experienceYears': experienceYears,
      'consultationFee': consultationFee,
      'teleconsultFee': teleconsultFee,
      if (bio != null) 'bio': bio,
      if (profileImageUrl != null) 'profileImageUrl': profileImageUrl,
      if (rating != null) 'rating': rating,
      if (totalReviews != null) 'totalReviews': totalReviews,
      'status': status,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _DoctorImpl extends Doctor {
  _DoctorImpl({
    int? id,
    required String employeeId,
    required String name,
    required int specializationId,
    required int poliId,
    required String phone,
    required String licenseNumber,
    required int experienceYears,
    required double consultationFee,
    required double teleconsultFee,
    String? bio,
    String? profileImageUrl,
    double? rating,
    int? totalReviews,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         employeeId: employeeId,
         name: name,
         specializationId: specializationId,
         poliId: poliId,
         phone: phone,
         licenseNumber: licenseNumber,
         experienceYears: experienceYears,
         consultationFee: consultationFee,
         teleconsultFee: teleconsultFee,
         bio: bio,
         profileImageUrl: profileImageUrl,
         rating: rating,
         totalReviews: totalReviews,
         status: status,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Doctor]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Doctor copyWith({
    Object? id = _Undefined,
    String? employeeId,
    String? name,
    int? specializationId,
    int? poliId,
    String? phone,
    String? licenseNumber,
    int? experienceYears,
    double? consultationFee,
    double? teleconsultFee,
    Object? bio = _Undefined,
    Object? profileImageUrl = _Undefined,
    Object? rating = _Undefined,
    Object? totalReviews = _Undefined,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Doctor(
      id: id is int? ? id : this.id,
      employeeId: employeeId ?? this.employeeId,
      name: name ?? this.name,
      specializationId: specializationId ?? this.specializationId,
      poliId: poliId ?? this.poliId,
      phone: phone ?? this.phone,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      experienceYears: experienceYears ?? this.experienceYears,
      consultationFee: consultationFee ?? this.consultationFee,
      teleconsultFee: teleconsultFee ?? this.teleconsultFee,
      bio: bio is String? ? bio : this.bio,
      profileImageUrl: profileImageUrl is String?
          ? profileImageUrl
          : this.profileImageUrl,
      rating: rating is double? ? rating : this.rating,
      totalReviews: totalReviews is int? ? totalReviews : this.totalReviews,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
