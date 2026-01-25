import 'dart:convert';

import 'package:collection/collection.dart';

class PanelizationSummary {
	bool? containsEpubBubbles;
	bool? containsImageBubbles;

	PanelizationSummary({
		this.containsEpubBubbles, 
		this.containsImageBubbles, 
	});

	@override
	String toString() {
		return 'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';
	}

	factory PanelizationSummary.fromMap(Map<String, dynamic> data) {
		return PanelizationSummary(
			containsEpubBubbles: data['containsEpubBubbles'] as bool?,
			containsImageBubbles: data['containsImageBubbles'] as bool?,
		);
	}



	Map<String, dynamic> toMap() => {
				'containsEpubBubbles': containsEpubBubbles,
				'containsImageBubbles': containsImageBubbles,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PanelizationSummary].
	factory PanelizationSummary.fromJson(String data) {
		return PanelizationSummary.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [PanelizationSummary] to a JSON string.
	String toJson() => json.encode(toMap());

	PanelizationSummary copyWith({
		bool? containsEpubBubbles,
		bool? containsImageBubbles,
	}) {
		return PanelizationSummary(
			containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
			containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! PanelizationSummary) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			containsEpubBubbles.hashCode ^
			containsImageBubbles.hashCode;
}
