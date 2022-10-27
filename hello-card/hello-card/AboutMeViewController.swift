import UIKit

class AboutMeViewController: UIViewController {
    
    let textView: UITextView = {
        let view = UITextView()
        view.isEditable = false
        view.backgroundColor = .clear
        view.textAlignment = .left
        view.font = .systemFont(ofSize: 18)
        view.text = """
        Hello, my name is Mary.
        
        I’m honest and reliable, friendly and positive.
        
        I love adventure and detective genres both for books and films, also love musicals and comedies.
        
        I listen to pop, country, and Latin music.
        
        I like dancing, gymming, and playing volleyball.
        
        I like traveling to new places, long walks in good company, and having tea conversations.
        
        I’m a dog person.
        
        I like experimenting in the kitchen and treating myself and my loved ones to tasty meals.
        """
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .secondarySystemBackground
        self.view.addSubview(self.textView)
        
        self.textView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.textView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            self.textView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            self.textView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            self.textView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
}
