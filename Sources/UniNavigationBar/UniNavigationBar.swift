import UIKit

public class UniNavigationBar: UIView {
    
    let backButton: UIButton = {
        let button = UIButton()
        if #available(iOS 13.0, *) {
            button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        } else {
            // Fallback on earlier versions
        }
        return button
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setStyle()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setStyle()
    }
    
    func setStyle() {
        
        [backButton, titleLabel].forEach {
            addSubview($0)
        }
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        backButton.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 24)
            .isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 24)
            .isActive = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: backButton.trailingAnchor, constant: 16).isActive = true
    }
}
