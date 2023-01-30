import UIKit

class MyJobViewController: UIViewController {
    
    let textView: UITextView = {
        let view = UITextView()
        view.isEditable = false
        view.backgroundColor = .clear
        view.textAlignment = .left
        view.font = .systemFont(ofSize: 18)
        view.text = """
        Education: Water Engineering, completed manual and automated software testing courses.
                
        Career: 4 years of working as a Quality Assurance Engineer with a focus on mobile apps.

        I’ve worked for two companies, and in both of them I was the first QA engineer. It gave me a great opportunity to design and implement the QA process from scratch, and integrated it into the development pipeline, taking into account companies’ goals and resources. It was an amazing experience, I improved my QA skills as well as gained a lot of knowledge in related fields such as software development, design, analytics, and product management.

        At some point in my career, I understood that the actual development, designing and implementation of the products and their features inspire me much more than the testing and verification of them. That’s why I decided to make a step forward in my career and started learning iOS development.

        I love learning and want to become a qualified software engineer who is not afraid of challenging tasks. iOS development opens a whole new world of technology and knowledge for me.
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
