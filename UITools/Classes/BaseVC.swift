//
//  BaseVC.swift
//  Pods-UITools_Example
//
//  Created by 聂飞安 on 2019/9/3.
//

import UIKit

open class BaseVC: UIViewController , IDataPost {

    override open func viewDidLoad() {
        super.viewDidLoad()
        #if DEBUG
        print("当前类:\(self.classForCoder)")
        #endif
        // Do any additional setup after loading the view.
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showNavBar()
        if let count = self.navigationController?.viewControllers.count , count > 1 {
             self.tabBarController?.tabBar.isHidden = true
        }
    }
    
    open func showNavBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    /// 推送过来的数据
    open var postData : AnyObject?
    
    open var callBack: CBWithParam?
    
    open func postData(_ postData : AnyObject?) {
        self.postData = postData
    }
    
    open func regCallBack(_ cb : @escaping CBWithParam) {
        self.callBack = cb
    }
    
    deinit {
        #if DEBUG
        print("\(self.classForCoder)销毁")
        #endif
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
