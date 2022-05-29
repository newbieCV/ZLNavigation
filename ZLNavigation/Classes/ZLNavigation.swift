//
//  ZLNavigation.swift
//  ZLife
//
//  Created by 张宗宇 on 2022/3/1.
//

import UIKit
import AMapFoundationKit
import MAMapKit

//MARK: 高德地图调用VC

public class ZLNavigation: UIViewController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // APIkey需要自行获取，此处仅为示例
        #if DEBUG
        AMapServices.shared().apiKey = "15f252085c1875f2c96429e37a437568"
        #else
        AMapServices.shared().apiKey = ""
        #endif
        
        // 更新协议，8.1.0版本开始
        MAMapView.updatePrivacyAgree(.didAgree)
        MAMapView.updatePrivacyShow(.didShow, privacyInfo: .didContain)
        // 打开https开关
        AMapServices.shared().enableHTTPS = true

        let mapView = MAMapView(frame: self.view.bounds)
        mapView.delegate = self
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        mapView.isShowsIndoorMap = true
        mapView.isShowTraffic = true
        mapView.showsScale = false
        mapView.showsCompass = true
        mapView.compassOrigin = CGPoint(x: UIScreen.main.bounds.width - 40, y: 40)
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        mapView.zoomLevel = 11
        mapView.isRotateEnabled = false
        self.view.addSubview(mapView)
    }
    
}

extension ZLNavigation : MAMapViewDelegate {
    
}
