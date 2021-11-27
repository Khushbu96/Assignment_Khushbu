//
//  Application.swift
//  Assignment_Khushbu
//
//  Created by Khushbu Shukla on 11/27/21.
//

import Foundation
import UIKit

class Application {
    class var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    class var sharedScene: SceneDelegate {
        return UIApplication.shared.connectedScenes.first?.delegate as! SceneDelegate
    }
    
    class var name: String {
        return Bundle.main.infoDictionary!["CFBundleName"] as! String
    }
    
    class var rootViewController: UIViewController {
        return Application.sharedScene.window!.rootViewController!
    }

    class var uniqueIdentifier: String {
        return UIDevice.current.identifierForVendor!.uuidString
    }
}
