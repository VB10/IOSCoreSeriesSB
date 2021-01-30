//
//  SampleExtensionViewController.swift
//  IOSCoreSeriesSB
//
//  Created by 111542 on 1/31/21.
//

import UIKit


protocol HelloView {
    func changeNAme()
}

class SampleExtensionViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self

        let sampleView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        sampleView.backgroundColor = .red

//        sampleView.makeCircleView()
        sampleView.makePaddingHorizontal(val: 10)
            
     
        makeCirlceView(view: sampleView)
        view.addSubview(sampleView)
    }
}


extension SampleExtensionViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "VB"
        return cell

    }

}



extension SampleExtensionViewController: HelloView {
    func changeNAme() {

    }
}


extension SampleExtensionViewController: CircleViewProtocol {

}
