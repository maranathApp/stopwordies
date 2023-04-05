If you wish to 🚫 remove or 🔁 update some of the stopwords, please file an issue first before sending a pull request.

If you would like to ➕ add a stopword or a new collection of stopwords for a specific language, please add them as a new json file in the `assets/jsons/` directory through a pull request. Don't forget to:
- update the **SWLocale** enumeration in `lib/src/models/locales.model.dart` by adding the new locale code.
- update the locale codes list in the README.md with the new locale code (if not already present) and its checkmark next to it to make clear that it is now supported.
- run unit tests to see if it does fetch all the stopwords from supported locales and that nothing is broken. If unit tests fail, it probably means that you've missed a step.