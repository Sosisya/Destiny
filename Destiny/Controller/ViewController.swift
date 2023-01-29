import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!

    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceTapped(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.titleLabel?.text ?? "")

        updateUI()
    }

    func updateUI() {
        storyLabel.text = storyBrain.getQuestionTextforLabel()
        firstChoiceButton.setTitle(storyBrain.getQnswerForFirstChoice(), for: .normal)
        secondChoiceButton.setTitle(storyBrain.getQnswerForSecondChoice(), for: .normal)
    }
}

