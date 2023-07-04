//
//  ARQuickLookView.swift
//  AppleEventCollection
//
//  Created by ZZY on 2022/8/26.
//  Copyright © 2022 Personal usage. All rights reserved.
//

import SwiftUI
import QuickLook
import ARKit

struct ARQuickLookView: UIViewControllerRepresentable {
    @EnvironmentObject var appStatus: AppStatus
    
    func makeCoordinator() -> ARQuickLookView.Coordinator {
        Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> QLPreviewControllerWrapper {
        // Create the preview controller, and assign our Coordinator class as its data source.
        let controller = QLPreviewControllerWrapper()
        controller.qlvc.dataSource = context.coordinator
        controller.qlvc.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: QLPreviewControllerWrapper, context: Context) {
        // nothing to do here
    }
//    func makeUIViewController(context: Context) -> ARQuickLookViewController {
//           let controller = ARQuickLookViewController()
//           controller.arQuickLookCoordinator = context.coordinator
//           return controller
//       }
//
//    func updateUIViewController(_ uiViewController: ARQuickLookViewController, context: Context) {
//        // nothing to do here
//    }
    class Coordinator: NSObject, QLPreviewControllerDataSource, QLPreviewControllerDelegate {
        let parent: ARQuickLookView

        init(parent: ARQuickLookView) {
            self.parent = parent
        }

        func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
            return 1
        }

        func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
            guard let fileURL = parent.appStatus.modelURL else {
                fatalError()
            }
            
            let item = ARQuickLookPreviewItem(fileAt: fileURL)
            item.allowsContentScaling = parent.appStatus.allowScaling
            return item  as QLPreviewItem
        }

        func previewControllerWillDismiss(_ controller: QLPreviewController) {
            parent.appStatus.toShowARModel = false
        }
    }
//    class Coordinator: NSObject, QLPreviewControllerDataSource, QLPreviewControllerDelegate {
//        let parent: ARQuickLookView
//
//        init(_ parent: ARQuickLookView) {
//            self.parent = parent
//            super.init()
//        }
//
//        // The QLPreviewController asks its delegate how many items it has:
//        func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
//            return 1
//        }
//
//        // For each item (see method above), the QLPreviewController asks for
//        // a QLPreviewItem instance describing that item:
//        func previewController(_ controller: QLPreviewController,
//                               previewItemAt index: Int) -> QLPreviewItem {
//            guard let fileURL = parent.appStatus.modelURL else {
//                fatalError()
//            }
//
//            let item = ARQuickLookPreviewItem(fileAt: fileURL)
//            item.allowsContentScaling = parent.appStatus.allowScaling
//            return item
//        }
//        
//        func previewController(_ controller: QLPreviewController, shouldOpen url: URL, for item: QLPreviewItem) -> Bool {
//            // Check if the item is an ARQuickLookPreviewItem and the device supports AR
//            if item is ARQuickLookPreviewItem, ARWorldTrackingConfiguration.isSupported {
//                let arConfig = ARWorldTrackingConfiguration()
//                
//                // Create the ARView and set the configuration
//                let arView = ARSCNView(frame: controller.view.bounds)
//                arView.session.run(arConfig)
//                
//                // Present the ARView in fullscreen
//                let arViewController = UIViewController()
//                arViewController.view.addSubview(arView)
//                arView.translatesAutoresizingMaskIntoConstraints = false
//                NSLayoutConstraint.activate([
//                    arView.topAnchor.constraint(equalTo: arViewController.view.topAnchor),
//                    arView.bottomAnchor.constraint(equalTo: arViewController.view.bottomAnchor),
//                    arView.leadingAnchor.constraint(equalTo: arViewController.view.leadingAnchor),
//                    arView.trailingAnchor.constraint(equalTo: arViewController.view.trailingAnchor)
//                ])
//                
//                // Dismiss the ARView when tapped
//                let tapGestureRecognizer = UITapGestureRecognizer(target: arViewController, action: #selector(arViewController.dismiss(animated:completion:)))
//                arViewController.view.addGestureRecognizer(tapGestureRecognizer)
//                
//                controller.present(arViewController, animated: true, completion: nil)
//                
//                return false // Prevent the default behavior for opening the URL
//            } else {
//                return true // Allow the default behavior for other preview items
//            }
//        }
//    }
}


//class ARQuickLookViewController: UIViewController {
//    var arQuickLookCoordinator: ARQuickLookView.Coordinator?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let previewController = QLPreviewController()
//        previewController.dataSource = arQuickLookCoordinator
//        previewController.delegate = arQuickLookCoordinator
//
//        addChild(previewController)
//        view.addSubview(previewController.view)
//        previewController.view.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            previewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            previewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            previewController.view.topAnchor.constraint(equalTo: view.topAnchor),
//            previewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
//
//        previewController.didMove(toParent: self)
//    }
//}

class QLPreviewControllerWrapper: UIViewController {
    let qlvc = QLPreviewController()
    var qlPresented = false

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !qlPresented {
            present(qlvc, animated: false, completion: nil)
            qlPresented = true
        }
    }
}


struct ARQuickLookView_Previews: PreviewProvider {
    static var previews: some View {
        ARQuickLookView()
            .environmentObject(AppStatus())
    }
}

