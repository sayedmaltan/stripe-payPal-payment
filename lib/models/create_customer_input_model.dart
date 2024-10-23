class CreateCustomerInputModel {
  final String name;
  final String email;


  CreateCustomerInputModel(this.name, this.email);

  toJson() {
    return {
      'name': name,
      'email': email,
    };
  }
}
