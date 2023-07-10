import UIKit

public class UniNavigationBar: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setStyle()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setStyle()
    }
    
    private func setStyle() {
        backgroundColor = .red
    }
}
