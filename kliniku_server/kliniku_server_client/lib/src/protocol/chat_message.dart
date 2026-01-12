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

abstract class ChatMessage implements _i1.SerializableModel {
  ChatMessage._({
    this.id,
    required this.chatRoomId,
    required this.senderId,
    required this.senderType,
    required this.messageType,
    required this.content,
    this.attachmentUrl,
    required this.isRead,
    required this.sentAt,
  });

  factory ChatMessage({
    int? id,
    required int chatRoomId,
    required int senderId,
    required String senderType,
    required String messageType,
    required String content,
    String? attachmentUrl,
    required bool isRead,
    required DateTime sentAt,
  }) = _ChatMessageImpl;

  factory ChatMessage.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatMessage(
      id: jsonSerialization['id'] as int?,
      chatRoomId: jsonSerialization['chatRoomId'] as int,
      senderId: jsonSerialization['senderId'] as int,
      senderType: jsonSerialization['senderType'] as String,
      messageType: jsonSerialization['messageType'] as String,
      content: jsonSerialization['content'] as String,
      attachmentUrl: jsonSerialization['attachmentUrl'] as String?,
      isRead: jsonSerialization['isRead'] as bool,
      sentAt: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['sentAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int chatRoomId;

  int senderId;

  String senderType;

  String messageType;

  String content;

  String? attachmentUrl;

  bool isRead;

  DateTime sentAt;

  /// Returns a shallow copy of this [ChatMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChatMessage copyWith({
    int? id,
    int? chatRoomId,
    int? senderId,
    String? senderType,
    String? messageType,
    String? content,
    String? attachmentUrl,
    bool? isRead,
    DateTime? sentAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChatMessage',
      if (id != null) 'id': id,
      'chatRoomId': chatRoomId,
      'senderId': senderId,
      'senderType': senderType,
      'messageType': messageType,
      'content': content,
      if (attachmentUrl != null) 'attachmentUrl': attachmentUrl,
      'isRead': isRead,
      'sentAt': sentAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatMessageImpl extends ChatMessage {
  _ChatMessageImpl({
    int? id,
    required int chatRoomId,
    required int senderId,
    required String senderType,
    required String messageType,
    required String content,
    String? attachmentUrl,
    required bool isRead,
    required DateTime sentAt,
  }) : super._(
         id: id,
         chatRoomId: chatRoomId,
         senderId: senderId,
         senderType: senderType,
         messageType: messageType,
         content: content,
         attachmentUrl: attachmentUrl,
         isRead: isRead,
         sentAt: sentAt,
       );

  /// Returns a shallow copy of this [ChatMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChatMessage copyWith({
    Object? id = _Undefined,
    int? chatRoomId,
    int? senderId,
    String? senderType,
    String? messageType,
    String? content,
    Object? attachmentUrl = _Undefined,
    bool? isRead,
    DateTime? sentAt,
  }) {
    return ChatMessage(
      id: id is int? ? id : this.id,
      chatRoomId: chatRoomId ?? this.chatRoomId,
      senderId: senderId ?? this.senderId,
      senderType: senderType ?? this.senderType,
      messageType: messageType ?? this.messageType,
      content: content ?? this.content,
      attachmentUrl: attachmentUrl is String?
          ? attachmentUrl
          : this.attachmentUrl,
      isRead: isRead ?? this.isRead,
      sentAt: sentAt ?? this.sentAt,
    );
  }
}
