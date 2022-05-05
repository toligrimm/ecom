// const String tableAccounts = 'accounts';
// class AccountFields{
//   static final List<String> values = [
//     id, email, password, firstName, lastName, phoneNumber
//   ];
//
//   static const String id = '_id';
//   static const String email = '_email';
//   static const String password = '_password';
//   static const String firstName = '_firstNumber';
//   static const String lastName = '_lastName';
//   static const String phoneNumber = '_phoneNumber';
// }
// class Account {
//   final int? id;
//   final String email;
//   final String password;
//   final String firstName;
//   final String lastName;
//   final String phoneNumber;
//
//   const Account({
//   this.id,
//   required this.email,
//   required this.password,
//   required this.firstName,
//   required this.lastName,
//   required this.phoneNumber,
//   });
//
//   Account copy({
//     int? id,
//     String? email,
//     String? password,
//     String? firstName,
//     String? lastName,
//     String? phoneNumber,
//   }) => Account(
//     id: id ?? this.id,
//     email: email ?? this.email,
//     password: password ?? this.password,
//     firstName: firstName ?? this.firstName,
//     lastName: lastName ?? this.lastName,
//     phoneNumber: phoneNumber ?? this.phoneNumber,
//   );
//
//   static Account fromJson(Map<String, Object?> json) => Account(
//     id: json[AccountFields.id] as int?,
//     email: json[AccountFields.email] as String,
//     password: json[AccountFields.password] as String,
//     firstName: json[AccountFields.firstName] as String,
//     lastName: json[AccountFields.lastName] as String,
//     phoneNumber: json[AccountFields.phoneNumber] as String,
//
//   );
//
//   Map<String, Object?> toJson() => {
//     AccountFields.id: id,
//     AccountFields.email: email,
//     AccountFields.password: password,
//     AccountFields.firstName: firstName,
//     AccountFields.lastName: lastName,
//     AccountFields.phoneNumber: phoneNumber,
//   };
//
//
// }
//
class Account {
  int? id;
  String? email;
  String? password;
  String? firstName;
  String? lastName;
  String? phoneNumber;

  static const tblAccount = 'contacts';
  static const colId = 'id';
  static const colEmail = 'email';
  static const colFirstName = 'firstName';
  static const colLastName = 'lastName';
  static const colPassword = 'password';
  static const colPhoneNumber = 'phoneNumber';

  Account({this.id, this.email, this.firstName, this.lastName,this.password,this.phoneNumber,});



  Account.fromMap(Map<dynamic, dynamic> map) {
    id = map[colId];
    email = map[colEmail];
    firstName = map[colFirstName];
    lastName = map[colLastName];
    password = map[colPassword];
    phoneNumber = map[colPhoneNumber];
  }


  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{colEmail: email, colFirstName: firstName, colLastName: lastName, colPassword: password, colPhoneNumber: phoneNumber};
    map[colId] = id;
    return map;
  }
}
