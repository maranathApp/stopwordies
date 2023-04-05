import 'package:flutter_test/flutter_test.dart';
import 'package:stopwordies/stopwordies.dart';

void main() {
  setUp(
    () {
      TestWidgetsFlutterBinding.ensureInitialized();
    },
  );

  /// THIS UNIT TEST SHOULD NOT BE EDITED.
  test(
    "Tests the retrieval of stopwords for every supported locale.",
    () async {
      // Given
      for (var locale in SWLocale.values) {
        // When
        final words = await StopWordies.getFor(
          locale: locale,
        );
        // Then
        expect(words, isNotEmpty);
        expect(words, isNotNull);
        expect(words, isList);
      }
    },
  );
}
