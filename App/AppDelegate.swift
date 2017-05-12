//
//  AppDelegate.swift
//  PiOS
//
//  Created by Florian PETIT on 26/10/2016.
//
//

import UIKit
import PiOS
import PluggableApplicationDelegate

@UIApplicationMain
class AppDelegate: PiOSApplicationDelegate {

    override var services: [ApplicationService] {
        return [
            ApplicationLifeCycleService()
        ]
    }


}
