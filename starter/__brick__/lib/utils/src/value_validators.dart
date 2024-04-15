// part of utils;
//
// Either<ValueFailure<String>, String> validateMaxStringLength(
//   String input,
//   int maxLength,
// ) {
//   if (input.length <= maxLength) {
//     return Right(data: input);
//   } else {
//     return Left(
//       errorMsg:
//           ValueFailure.exceedingLength(failedValue: input, max: maxLength),
//     );
//   }
// }
//
// Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
//   if (input.isNotEmpty) {
//     return Right(data: input);
//   } else {
//     return Left(errorMsg: ValueFailure.empty(failedValue: input));
//   }
// }
//
// Either<ValueFailure<String>, String> validateSingleLine(String input) {
//   if (input.contains('\n')) {
//     return Left(errorMsg: ValueFailure.multiline(failedValue: input));
//   } else {
//     return Right(data: input);
//   }
// }
//
// Either<ValueFailure<String>, String> validateEmail(String input) {
//   const emailRegex =
//       r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
//   if (RegExp(emailRegex).hasMatch(input)) {
//     return Right(data: input);
//   } else {
//     return Left(errorMsg: ValueFailure.invalidEmail(failedValue: input));
//   }
// }
//
// Either<ValueFailure<String>, String> validatePassword(String input) {
//   if (input.length >= 6) {
//     return Right(data: input);
//   } else {
//     return Left(errorMsg: ValueFailure.shortPassword(failedValue: input));
//   }
// }
