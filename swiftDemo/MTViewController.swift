//
//  MTViewController.swift
//  swiftDemo
//
//  Created by 牛高航 on 2017/3/13.
//  Copyright © 2017年 牛高航. All rights reserved.
//

import UIKit

class MTViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        //调用封装方法

        addChildViewController(MS_MainViewController(), title: "首页", imageName: "tabHome")
        addChildViewController(MS_NewsViewController(), title: "资讯", imageName: "tabZx")
        addChildViewController(MS_VideoViewController(), title: "视频", imageName: "tabSp")
        addChildViewController(MS_PersonViewController(), title: "我", imageName: "tabI")
        
    
        
       
        
        
    }

    // Swift支持方法的重改:方法名称相同.但是参数类型和个数不同
    // private在当前文件中可以访问,其他文件不能访问
    // swift3.0 private建议修改为fileprivate
    private func addChildViewController(_ childVC: UIViewController, title : String, imageName : String) {
        //1.设置自控制器的属性
        childVC.title = title
        
        childVC.tabBarItem.image=UIImage(named: imageName)
        childVC.tabBarItem.selectedImage = UIImage(named: imageName + "A")
        //2.包装导航控制器
        let childNav = BaseNavigationViewController(rootViewController:childVC)
        //3.添加控制器
        addChildViewController(childNav)

    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
