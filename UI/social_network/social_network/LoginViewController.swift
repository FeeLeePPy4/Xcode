
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func signInButton(_ sender: Any) {
        
        if let login = loginTextField.text,
            let password = passwordTextField.text {
            
            if login == "admin" && password == "qwerty" {
                print("Success!")
            }
            else {
                print("Failure!")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
