import UIKit

class MyDayViewController: UIViewController {
    
    let textView: UITextView = {
        let view = UITextView()
        view.isEditable = false
        view.backgroundColor = .clear
        view.textAlignment = .left
        view.font = .systemFont(ofSize: 20)
        view.text = """
        • Get Up
        
        • Breakfast
        
        • Work
        
        • Go to Gym
        
        • Lunch
        
        • Work
        
        • Go for a walk
        
        • Dinner
        
        • Have time for myself
        
        • Take a shower
        
        • Go to bed
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
