import 'dart:convert';

import 'package:collection/collection.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'volume_info.dart';

class Item {
	String? kind;
	String? id;
	String? etag;
	String? selfLink;
	VolumeInfo? volumeInfo;
	SaleInfo? saleInfo;
	AccessInfo? accessInfo;

	Item({
		this.kind, 
		this.id, 
		this.etag, 
		this.selfLink, 
		this.volumeInfo, 
		this.saleInfo, 
		this.accessInfo, 
	});

	@override
	String toString() {
		return 'Item(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo)';
	}

	factory Item.fromMap(Map<String, dynamic> data) => Item(
				kind: data['kind'] as String?,
				id: data['id'] as String?,
				etag: data['etag'] as String?,
				selfLink: data['selfLink'] as String?,
				volumeInfo: data['volumeInfo'] == null
						? null
						: VolumeInfo.fromMap(data['volumeInfo'] as Map<String, dynamic>),
				saleInfo: data['saleInfo'] == null
						? null
						: SaleInfo.fromMap(data['saleInfo'] as Map<String, dynamic>),
				accessInfo: data['accessInfo'] == null
						? null
						: AccessInfo.fromMap(data['accessInfo'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'kind': kind,
				'id': id,
				'etag': etag,
				'selfLink': selfLink,
				'volumeInfo': volumeInfo?.toMap(),
				'saleInfo': saleInfo?.toMap(),
				'accessInfo': accessInfo?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Item].
	factory Item.fromJson(String data) {
		return Item.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Item] to a JSON string.
	String toJson() => json.encode(toMap());

	Item copyWith({
		String? kind,
		String? id,
		String? etag,
		String? selfLink,
		VolumeInfo? volumeInfo,
		SaleInfo? saleInfo,
		AccessInfo? accessInfo,
	}) {
		return Item(
			kind: kind ?? this.kind,
			id: id ?? this.id,
			etag: etag ?? this.etag,
			selfLink: selfLink ?? this.selfLink,
			volumeInfo: volumeInfo ?? this.volumeInfo,
			saleInfo: saleInfo ?? this.saleInfo,
			accessInfo: accessInfo ?? this.accessInfo,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Item) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			kind.hashCode ^
			id.hashCode ^
			etag.hashCode ^
			selfLink.hashCode ^
			volumeInfo.hashCode ^
			saleInfo.hashCode ^
			accessInfo.hashCode;
}
