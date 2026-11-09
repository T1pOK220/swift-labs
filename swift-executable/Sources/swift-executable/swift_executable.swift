
import Foundation
import Crypto

@main
struct swift_executable {
    static func main() {
        let login = "admin@gmail.com"
        let password = "e96e9dad08f7e24abb00867770eda302"
        let _password = "Oleg12345"
        Login( login: login, hash: password,password: _password)
    }
    static func Login(login: String,hash: String,password: String) {
        let digest = Insecure.MD5.hash(
            data: Data(password.utf8)
        )
        let hashedPassword = digest.map {
            String(format: "%02x", $0)
        }.joined()
        if hashedPassword == hash {
            print("Успішний вхід для \(login)")
        } else {
            print("Помилка: пароль не збігається")
        }
    }
}