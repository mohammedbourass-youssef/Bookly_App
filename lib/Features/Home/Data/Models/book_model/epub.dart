import 'dart:convert';

import 'package:collection/collection.dart';

class Epub {
	bool? isAvailable;

	Epub({this.isAvailable});

	@override
	String toString() => 'Epub(isAvailable: $isAvailable)';

	factory Epub.fromMap(Map<String, dynamic> data) => Epub(
				isAvailable: data['isAvailable'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'isAvailable': isAvailable,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Epub].
	factory Epub.fromJson(String data) {
		return Epub.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Epub] to a JSON string.
	String toJson() => json.encode(toMap());

	Epub copyWith({
		bool? isAvailable,
	}) {
		return Epub(
			isAvailable: isAvailable ?? this.isAvailable,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Epub) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode => isAvailable.hashCode;
}
