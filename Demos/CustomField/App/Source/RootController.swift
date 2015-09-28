import UIKit
import Form.FORMViewController

class RootController: FORMViewController, CustomFieldDelegate {
    init(JSON: [String : AnyObject], initialValues: [String : AnyObject]) {
        super.init(JSON: JSON, andInitialValues: initialValues, disabled:true)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not supported")
    }

    // MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView?.backgroundColor = UIColor(hex: "DAE2EA")

        self.collectionView?.registerClass(CustomField.self, forCellWithReuseIdentifier: CustomField.CellIdentifier)

        let configureCellForItemAtIndexPathBlock: FORMConfigureCellForItemAtIndexPathBlock = { field, collectionView, indexPath in
            if field.type == .Custom && field.typeString == "textye" {
                let cell = collectionView.dequeueReusableCellWithReuseIdentifier(CustomField.CellIdentifier, forIndexPath: indexPath) as! CustomField
                cell.customDelegate = self
                return cell
            }

            return nil
        }

        self.dataSource.configureCellForItemAtIndexPathBlock = configureCellForItemAtIndexPathBlock
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        let readOnlyView = UIView(frame: CGRectMake(0.0, 0.0, 150.0, 40.0))
        let readOnlyLabel = UILabel(frame: CGRectMake(0.0, 0.0, 90.0, 40.0))
        readOnlyLabel.text = "Read-Only"
        readOnlyLabel.textColor = UIColor(hex: "5182AF")
        readOnlyLabel.font = UIFont.boldSystemFontOfSize(17.0)

        readOnlyView.addSubview(readOnlyLabel)

        let readOnlySwitch = UISwitch(frame: CGRectMake(90.0, 5.0, 40.0, 40.0))
        readOnlySwitch.tintColor = UIColor(hex: "5182AF")
        readOnlySwitch.on = true
        readOnlySwitch.addTarget(self,
            action: NSSelectorFromString("readOnly:"),
            forControlEvents: .ValueChanged)

        readOnlyView.addSubview(readOnlySwitch)

        let readOnlyBarButtonItem = UIBarButtonItem(customView: readOnlyView)

        self.setToolbarItems([readOnlyBarButtonItem], animated: false)
        
        self.navigationController?.setToolbarHidden(false, animated: true)
    }

    // MARK: CustomFieldDelegate

    func customFieldWasUpdated(text: String) {
        print(text)
    }

    // MARK: Actions

    func readOnly(sender: UISwitch) {
        if sender.on {
            self.dataSource.disable()
        } else {
            self.dataSource.enable()
        }
    }
}
