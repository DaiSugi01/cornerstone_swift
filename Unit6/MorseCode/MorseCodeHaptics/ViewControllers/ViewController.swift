
import UIKit

class ViewController: UIViewController {
    
    enum PlayerMode: Int {
        case both, haptic, visual
    }
    
    @IBOutlet var playerModeSegmentedControl: UISegmentedControl!
    @IBOutlet var messageTextField: UITextField!
    @IBOutlet var playButton: UIButton!
        
    var visualPlayerView: VisualMorseCodePlayerView {
        return view as! VisualMorseCodePlayerView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        messageTextField.text = "sos"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    @IBAction func playerModeSegmentedControlValueChanged(_ sender: UISegmentedControl) {

    }
    
    @IBAction func playMessage(_ sender: Any) {
        guard let morseCodeMessage = MorseCodeMessage(message: messageTextField.text!) else { return }
        messageTextField.resignFirstResponder()
        do{
            try visualPlayerView.play(message: morseCodeMessage)
        } catch {
            fatalError("Invalid")
        }
    }
    
    func presentErrorAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(.init(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

