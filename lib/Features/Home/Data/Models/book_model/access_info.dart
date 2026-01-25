import 'dart:convert';

import 'package:collection/collection.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo {
	String? country;
	String? viewability;
	bool? embeddable;
	bool? publicDomain;
	String? textToSpeechPermission;
	Epub? epub;
	Pdf? pdf;
	String? webReaderLink;
	String? accessViewStatus;
	bool? quoteSharingAllowed;

	AccessInfo({
		this.country, 
		this.viewability, 
		this.embeddable, 
		this.publicDomain, 
		this.textToSpeechPermission, 
		this.epub, 
		this.pdf, 
		this.webReaderLink, 
		this.accessViewStatus, 
		this.quoteSharingAllowed, 
	});

	@override
	String toString() {
		return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
	}

	factory AccessInfo.fromMap(Map<String, dynamic> data) => AccessInfo(
				country: data['country'] as String?,
				viewability: data['viewability'] as String?,
				embeddable: data['embeddable'] as bool?,
				publicDomain: data['publicDomain'] as bool?,
				textToSpeechPermission: data['textToSpeechPermission'] as String?,
				epub: data['epub'] == null
						? null
						: Epub.fromMap(data['epub'] as Map<String, dynamic>),
				pdf: data['pdf'] == null
						? null
						: Pdf.fromMap(data['pdf'] as Map<String, dynamic>),
				webReaderLink: data['webReaderLink'] as String?,
				accessViewStatus: data['accessViewStatus'] as String?,
				quoteSharingAllowed: data['quoteSharingAllowed'] as bool?,
			);

	Map<String, dynamic> toMap() => {
				'country': country,
				'viewability': viewability,
				'embeddable': embeddable,
				'publicDomain': publicDomain,
				'textToSpeechPermission': textToSpeechPermission,
				'epub': epub?.toMap(),
				'pdf': pdf?.toMap(),
				'webReaderLink': webReaderLink,
				'accessViewStatus': accessViewStatus,
				'quoteSharingAllowed': quoteSharingAllowed,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AccessInfo].
	factory AccessInfo.fromJson(String data) {
		return AccessInfo.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [AccessInfo] to a JSON string.
	String toJson() => json.encode(toMap());

	AccessInfo copyWith({
		String? country,
		String? viewability,
		bool? embeddable,
		bool? publicDomain,
		String? textToSpeechPermission,
		Epub? epub,
		Pdf? pdf,
		String? webReaderLink,
		String? accessViewStatus,
		bool? quoteSharingAllowed,
	}) {
		return AccessInfo(
			country: country ?? this.country,
			viewability: viewability ?? this.viewability,
			embeddable: embeddable ?? this.embeddable,
			publicDomain: publicDomain ?? this.publicDomain,
			textToSpeechPermission: textToSpeechPermission ?? this.textToSpeechPermission,
			epub: epub ?? this.epub,
			pdf: pdf ?? this.pdf,
			webReaderLink: webReaderLink ?? this.webReaderLink,
			accessViewStatus: accessViewStatus ?? this.accessViewStatus,
			quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
		);
	}

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! AccessInfo) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toMap(), toMap());
	}

	@override
	int get hashCode =>
			country.hashCode ^
			viewability.hashCode ^
			embeddable.hashCode ^
			publicDomain.hashCode ^
			textToSpeechPermission.hashCode ^
			epub.hashCode ^
			pdf.hashCode ^
			webReaderLink.hashCode ^
			accessViewStatus.hashCode ^
			quoteSharingAllowed.hashCode;
}
