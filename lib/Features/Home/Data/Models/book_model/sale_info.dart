import 'dart:convert';

import 'package:collection/collection.dart';

class SaleInfo {
	String? country;
	String? saleability;
	bool? isEbook;

	SaleInfo({this.country, this.saleability, this.isEbook});

	@override
	String toString() {
		return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook)';
	}

	factory SaleInfo.fromMap(Map<String, dynamic> data) => SaleInfo(
				country: data['country'] as String?,
				saleability: data['saleability'] as String?,
				isEbook: data['isEbook'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'country': country,
				'saleability': saleability,
				'isEbook': isEbook,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SaleInfo].
	factory SaleInfo.fromJson(String data) {
		return SaleInfo.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [SaleInfo] to a JSON string.
	String toJson() => json.encode(toMap());

	SaleInfo copyWith({
		String? country,
		String? saleability,
		bool? isEbook,
	}) {
		return SaleInfo(
			country: country ?? this.country,
			saleability: saleability ?? this.saleability,
			isEbook: isEbook ?? this.isEbook,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! SaleInfo) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			country.hashCode ^
			saleability.hashCode ^
			isEbook.hashCode;
}
