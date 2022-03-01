//
//  ZLMapView.swift
//  ZLNavigation
//
//  Created by 张宗宇 on 2022/3/2.
//

import UIKit
import AMapFoundationKit
import MAMapKit

public class ZLMapView: UIView {
    public func viewDidLoad() {
        AMapServices.shared().apiKey = "15f252085c1875f2c96429e37a437568"
        MAMapView.updatePrivacyAgree(.didAgree)
        MAMapView.updatePrivacyShow(.didShow, privacyInfo: .didContain)
        AMapServices.shared().enableHTTPS = true
        
        let mapView = MAMapView(frame: self.bounds)
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
        self.addSubview(mapView)
    }
}
