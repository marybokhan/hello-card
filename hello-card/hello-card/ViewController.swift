import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    let profileImageView: UIImageView = {
        let image = UIImage(named: "myImage.png")
        let imageView = UIImageView(image: image)
        imageView.layer.masksToBounds = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30)
        label.text = "Hello!"
        return label
    }()
    
    let buttonsStackView: UIStackView = {
        let buttonsStack = UIStackView()
        buttonsStack.axis = .vertical
        buttonsStack.distribution = .fillEqually
        buttonsStack.spacing = 5
        return buttonsStack
    }()
    
    let aboutMeButton: UIButton = {
        let button = UIButton()
        button.setTitle("About Me", for: .normal)
        button.backgroundColor = .systemBackground
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 15
        return button
    }()
    
    let myJobButton: UIButton = {
        let button = UIButton()
        button.setTitle("What I Do", for: .normal)
        button.backgroundColor = .systemBackground
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 15
        return button
    }()

    let myDayButton: UIButton = {
        let button = UIButton()
        button.setTitle("Day in a Life", for: .normal)
        button.backgroundColor = .systemBackground
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 15
        return button
    }()
    
    let favoritesButton: UIButton = {
        let button = UIButton()
        button.setTitle("Favorites", for: .normal)
        button.backgroundColor = .systemBackground
        button.setTitleColor(.label, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.layer.cornerRadius = 15
        return button
    }()
    

   
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .secondarySystemBackground
        
        // UIImageView
        self.view.addSubview(self.profileImageView)
        
        // UIImageView Constarints
        self.profileImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.profileImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.profileImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50),
            self.profileImageView.widthAnchor.constraint(equalToConstant: 300),
            self.profileImageView.heightAnchor.constraint(equalTo: self.profileImageView.widthAnchor)
        ])
    
        // UILabel
        self.view.addSubview(self.nameLabel)
        
        // UILabel Constraints
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.nameLabel.topAnchor.constraint(equalTo: self.profileImageView.bottomAnchor, constant: 30),
            self.nameLabel.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor),
            self.nameLabel.heightAnchor.constraint(equalToConstant: 50)
        ])

        // UIStackView
        self.view.addSubview(self.buttonsStackView)
        
        // UIStackView Constraints
        self.buttonsStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.buttonsStackView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 20),
            self.buttonsStackView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -20),
            self.buttonsStackView.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor, constant: 30),
            self.buttonsStackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
        ])
        
        self.buttonsStackView.addArrangedSubview(self.aboutMeButton)
        self.buttonsStackView.addArrangedSubview(self.myJobButton)
        self.buttonsStackView.addArrangedSubview(self.myDayButton)
        self.buttonsStackView.addArrangedSubview(self.favoritesButton)

    
        // Buttons Logic
        self.aboutMeButton.addTarget(
            self,
            action: #selector(self.handleAboutMeButton),
            for: .touchUpInside
        )
        
        self.myJobButton.addTarget(
            self,
            action: #selector(self.handleMyJobButton),
            for: .touchUpInside
        )
        
        self.myDayButton.addTarget(
            self,
            action: #selector(self.handleMyDayButton),
            for: .touchUpInside
        )
        
        self.favoritesButton.addTarget(
            self,
            action: #selector(self.handleFavoritesButton),
            for: .touchUpInside
        )

    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
    }
    
    
    // MARK: - Functions
    
    @objc func handleAboutMeButton() {
        let aboutMeViewController = AboutMeViewController(nibName: nil, bundle: nil)
        self.present(aboutMeViewController, animated: true)
    }
    
    @objc func handleMyJobButton() {
        let myJobViewController = MyJobViewController(nibName: nil, bundle: nil)
        self.present(myJobViewController, animated: true)
    }
    
    @objc func handleMyDayButton() {
        let myDayViewController = MyDayViewController(nibName: nil, bundle: nil)
        self.present(myDayViewController, animated: true)
    }
    
    @objc func handleFavoritesButton() {
        let favoritesViewController = FavoritesViewController(nibName: nil, bundle: nil)
        self.present(favoritesViewController, animated: true)
    }
    
}

