// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadImageResponse extends UploadImageResponse {
  @override
  final String message;
  @override
  final String imageUrl;
  @override
  final ImageTypeEnum imageType;
  @override
  final int tenantId;

  factory _$UploadImageResponse(
          [void Function(UploadImageResponseBuilder)? updates]) =>
      (UploadImageResponseBuilder()..update(updates))._build();

  _$UploadImageResponse._(
      {required this.message,
      required this.imageUrl,
      required this.imageType,
      required this.tenantId})
      : super._();
  @override
  UploadImageResponse rebuild(
          void Function(UploadImageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadImageResponseBuilder toBuilder() =>
      UploadImageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadImageResponse &&
        message == other.message &&
        imageUrl == other.imageUrl &&
        imageType == other.imageType &&
        tenantId == other.tenantId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, imageType.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UploadImageResponse')
          ..add('message', message)
          ..add('imageUrl', imageUrl)
          ..add('imageType', imageType)
          ..add('tenantId', tenantId))
        .toString();
  }
}

class UploadImageResponseBuilder
    implements Builder<UploadImageResponse, UploadImageResponseBuilder> {
  _$UploadImageResponse? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  ImageTypeEnum? _imageType;
  ImageTypeEnum? get imageType => _$this._imageType;
  set imageType(ImageTypeEnum? imageType) => _$this._imageType = imageType;

  int? _tenantId;
  int? get tenantId => _$this._tenantId;
  set tenantId(int? tenantId) => _$this._tenantId = tenantId;

  UploadImageResponseBuilder() {
    UploadImageResponse._defaults(this);
  }

  UploadImageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _imageUrl = $v.imageUrl;
      _imageType = $v.imageType;
      _tenantId = $v.tenantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadImageResponse other) {
    _$v = other as _$UploadImageResponse;
  }

  @override
  void update(void Function(UploadImageResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadImageResponse build() => _build();

  _$UploadImageResponse _build() {
    final _$result = _$v ??
        _$UploadImageResponse._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'UploadImageResponse', 'message'),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'UploadImageResponse', 'imageUrl'),
          imageType: BuiltValueNullFieldError.checkNotNull(
              imageType, r'UploadImageResponse', 'imageType'),
          tenantId: BuiltValueNullFieldError.checkNotNull(
              tenantId, r'UploadImageResponse', 'tenantId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
