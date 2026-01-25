import 'dart:convert';

import 'package:collection/collection.dart';

class Pdf {
	bool? isAvailable;
	String? acsTokenLink;

	Pdf({this.isAvailable, this.acsTokenLink});

	@override
	String toString() {
		return 'Pdf(isAvailable: $isAvailable, acsTokenLink: $acsTokenLink)';
	}

	factory Pdf.fromMap(Map<String, dynamic> data) => Pdf(
				isAvailable: data['isAvailable'] as bool?,
				acsTokenLink: data['acsTokenLink'] as String?,
			);

	Map<String, dynamic> toMap() => {
				'isAvailable': isAvailable,
				'acsTokenLink': acsTokenLink,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Pdf].
	factory Pdf.fromJson(String data) {
		return Pdf.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Pdf] to a JSON string.
	String toJson() => json.encode(toMap());

	Pdf copyWith({
		bool? isAvailable,
		String? acsTokenLink,
	}) {
		return Pdf(
			isAvailable: isAvailable ?? this.isAvailable,
			acsTokenLink: acsTokenLink ?? this.acsTokenLink,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Pdf) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => isAvailable.hashCode ^ acsTokenLink.hashCode;
}
