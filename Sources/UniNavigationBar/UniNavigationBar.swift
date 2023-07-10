import UIKit

public class UniNavigationBar: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setStyle() {
        backgroundColor = .red
    }
}
