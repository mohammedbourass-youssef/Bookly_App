import 'dart:convert';

import 'package:collection/collection.dart';

class IndustryIdentifier {
	String? type;
	String? identifier;

	IndustryIdentifier({this.type, this.identifier});

	@override
	String toString() {
		return 'IndustryIdentifier(type: $type, identifier: $identifier)';
	}

	factory IndustryIdentifier.fromMap(Map<String, dynamic> data) {
		return IndustryIdentifier(
			type: data['type'] as String?,
			identifier: data['identifier'] as String?,
		);
	}



	Map<String, dynamic> toMap() => {
				'type': type,
				'identifier': identifier,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [IndustryIdentifier].
	factory IndustryIdentifier.fromJson(String data) {
		return IndustryIdentifier.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [IndustryIdentifier] to a JSON string.
	String toJson() => json.encode(toMap());

	IndustryIdentifier copyWith({
		String? type,
		String? identifier,
	}) {
		return IndustryIdentifier(
			type: type ?? this.type,
			identifier: identifier ?? this.identifier,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! IndustryIdentifier) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => type.hashCode ^ identifier.hashCode;
}
