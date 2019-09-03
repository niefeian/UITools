//
//  DataPost.swift
//  Pods-UITools_Example
//
//  Created by 聂飞安 on 2019/9/3.
//

/// 有参数的回调
public typealias CBWithParam = (AnyObject?) -> Void

/// 无参数的回调
public typealias CB = () -> Void

public let AppWidth: CGFloat = UIScreen.main.bounds.size.width
public let AppHeight: CGFloat = UIScreen.main.bounds.size.height

public protocol IDataPost {
    
    /// 注册回调函数
    func regCallBack(_ cb : @escaping CBWithParam)
    
    /// 传输数据
    func postData(_ data : AnyObject?)
}


public protocol IPageDataPost {
    /// 当前页面索引
    func setPageIndex(_ index : Int)
    /// 用户自定义数据
    func setUserData(_ data : AnyObject?)
    func getUserData() -> AnyObject?
    func getPageIndex() -> Int
}
