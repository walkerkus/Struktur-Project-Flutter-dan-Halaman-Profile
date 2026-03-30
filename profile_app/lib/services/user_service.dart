import '../models/user_model.dart';

class UserService {
  static UserModel getUser() {
    return UserModel(
      name: "Muhammad Syahid Kusasih",
      nim: "L200230272",
      prodi: "Informatika - Kelas A",
      description: "Mahasiswa Informatika yang memiliki minat besar di bidang Cyber Security dan Ethical Hacking.",
      email: "syahid@email.com",
      hobby: "Ngoding & Cyber Security",
    );
  }
}