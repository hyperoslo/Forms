import UIKit

class SampleCollectionViewController: UICollectionViewController {

  var layout: FORMLayout

  var initialValues :Dictionary<NSObject, AnyObject>?
  var JSON: AnyObject?

  lazy var dataSource: FORMDataSource = {[unowned self] in
    FORMDataSource(JSON: self.JSON,
      collectionView: self.collectionView,
      layout: self.layout,
      values: self.initialValues,
      disabled: true)
    }()

  init(initialValues: Dictionary<NSObject, AnyObject>, JSON: AnyObject?) {
    self.initialValues = initialValues
    self.JSON = JSON
    layout = FORMLayout()

    super.init(collectionViewLayout: layout)
  }

  required init(coder aDecoder: NSCoder) {
    layout = FORMLayout()

    super.init(coder: aDecoder)
  }

  // MARK: View life cycle

  override func viewDidLoad() {
    super.viewDidLoad()

    edgesForExtendedLayout = .None
    collectionView?.backgroundColor = UIColor(fromHex: "DAE2EA")
    collectionView?.dataSource = dataSource
  }

  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)

    let validateButtonItem = UIBarButtonItem(title: "Validate",
      style: .Done,
      target: self,
      action: "validateButtonAction")

    let updateButtonItem = UIBarButtonItem(title: "Update",
      style: .Done,
      target: self,
      action: "updateButtonAction")

    let flexibleBarButtonItem = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace)

    let readOnlyView = UIView(frame: CGRectMake(0, 0, 150, 40))
    let readOnlyLabel = UILabel(frame: CGRectMake(0, 0, 90, 40))
    readOnlyLabel.text = "Read-Only"
    readOnlyLabel.textColor = UIColor(fromHex: "5182AF")
    readOnlyLabel.font = UIFont.boldSystemFontOfSize(17)

    readOnlyView.addSubview(readOnlyLabel)

    let readOnlySwitch = UISwitch(frame: CGRectMake(90, 5, 40, 40))
    readOnlySwitch.tintColor = UIColor(fromHex: "5182AF")
    readOnlySwitch.on = true
    readOnlySwitch.addTarget(self, action: "readOnly:", forControlEvents: .ValueChanged)

    readOnlyView.addSubview(readOnlySwitch)

    let readOnlyBarButtonItem = UIBarButtonItem(customView: readOnlyView)

    setToolbarItems([validateButtonItem, flexibleBarButtonItem, updateButtonItem, flexibleBarButtonItem, readOnlyBarButtonItem], animated: false)

    navigationController?.setToolbarHidden(false, animated: true)
  }

  // MARK: Actions

  func readOnly(sender: UISwitch) {
    if sender.on {
      dataSource.disable()
    } else {
      dataSource.enable()
    }
  }

  func validateButtonAction() {
    if dataSource.isValid() {
      UIAlertView(title: "Everything is valid, you get a 🍬!",
        message: nil,
        delegate: nil,
        cancelButtonTitle: "No thanks!").show()
    } else {
      dataSource.validate()
    }
  }

  func updateButtonAction() {
    dataSource.reloadWithDictionary(["first_name" : "Hodo",
      "salary_type" : 1,
      "hourly_pay_level" : 1,
      "hourly_pay_premium_percent" : 10,
      "hourly_pay_premium_currency" : 10,
      "start_date" : NSNull(),
      "username": 1
      ])
    collectionView?.reloadData()
  }
}

extension SampleCollectionViewController :  UICollectionViewDelegate {

  func collectionView(collectionView: UICollectionView!, layout collectionViewLayout: UICollectionViewLayout!, sizeForItemAtIndexPath indexPath: NSIndexPath!) -> CGSize {
    return dataSource.sizeForFieldAtIndexPath(indexPath)
  }
}

extension UIBarButtonItem {

  convenience init(barButtonSystemItem systemItem: UIBarButtonSystemItem) {
    self.init(barButtonSystemItem: systemItem, target: nil, action: nil)
  }
}
