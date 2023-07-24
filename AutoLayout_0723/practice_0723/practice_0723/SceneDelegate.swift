//
//  SceneDelegate.swift
//  practice_0723
//
//  Created by 김상규 on 2023/07/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // 원래 UIWindowScene 타입의 무엇인가는 _ 로 이름이 없었지만
        // 활용하는 코드를 위해 windowScene으로 이름을 만들어줘야한다
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let practiceViewController = UINavigationController(rootViewController: PracticeViewController())

        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = practiceViewController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
      
    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
       
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

