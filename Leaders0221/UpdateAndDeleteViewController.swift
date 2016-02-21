//
//  UpdateAndDeleteViewController.swift
//  Leaders0221
//
//  Created by ShinokiRyosei on 2016/02/21.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class UpdateAndDeleteViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    var id: String!
    var text: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        let deleteButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Trash, target: self, action: "delete")
        self.navigationItem.rightBarButtonItem = deleteButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.text = text
    }
    
    @IBAction func post(sender: UIButton) {
        self.update()
    }
    //更新
    func update() {
        
    }
    
    //削除
    func delete() {
        
    }
    

    //遅延させた後、ViewControllerに戻る
    func backToHome() {
        let delay = 0.5 * Double(NSEC_PER_SEC) //時間の指定
        let time  = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue(), {
            //ここにコードを書く (今は4.5秒後に実行される)
            self.navigationController?.popViewControllerAnimated(true)
        })
    }

}
