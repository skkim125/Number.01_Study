//
//  ViewController.swift
//  practice_0723
//
//  Created by 김상규 on 2023/07/23.
//

import UIKit

class PracticeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        // 네비게이션 바 배경색 설정
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0)
        
        // 네비게이션 바 타이틀 설정
        title = "Custom Navigation Bar"
        
        // 네비게이션 바 타이틀 색상 설정
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        // 네비게이션 바의 아이템 색상 설정
        navigationController?.navigationBar.tintColor = .white
        
//        buildScreen()
        
        buildButton()
    }

//    func buildScreen() {
//        // view.safeAreaLayoutGuide: safe Area에 대한 레이아웃 가이드
//        // 뷰가 safe Area 내에 적절하게 배치되도록 함
//        let safeArea = view.safeAreaLayoutGuide
//
//        let scrollView: UIScrollView = UIScrollView()
//        scrollView.backgroundColor = .systemYellow
//
//        view.addSubview(scrollView)
//
//        // contentSize: 스크롤 뷰 내부에 있는 콘텐츠의 크기를 정의, 스크롤 가능한 영역을 결정
//        // view.bounds: 해당 뷰의 좌표 시스템 내에서 콘텐츠의 위치와 크기를 제어
//        scrollView.contentSize = CGSize(width: view.bounds.width, height: view.bounds.height)
//
//        // contentOffset: 스크롤 뷰 내에서 현재 콘텐츠가 표시되는 지점을 지정
//        scrollView.contentOffset = CGPoint(x: 0, y: 0)
//
//        // translatesAutoresizingMaskIntoConstraints: 오토 레이아웃 제약(Constraints)을 활성화 또는 비활성화
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//
//        // 제약 조건을 추가
//        // constant: 간격
//
//        // scrollView의 왼쪽 테두리를 safeArea에서 20 떨어짐
//        // ([+]: safeArea로부터 안으로 ,[-]: safeArea로부터 바깥으로)
//        scrollView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
//
//        // scrollView의 오른쪽 테두리를 safeArea에서 20 떨어짐
//        // ([+]: safeArea로부터 바깥으로 ,[-]: safeArea로부터 안으로)
//        scrollView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true
//
//        // scrollView의 윗 영역과 safeArea 사이의 거리를 30포인트로 유지하는 제약조건
//        // topAnchor에서 constant([+]: safeArea로부터 안으로 ,[-]: safeArea로부터 바깥으로)
//        scrollView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 30).isActive = true
//
//        // scrollView의 바닥 영역을 safeArea에서 30포인트 위로 유지하는 제약조건
//        // bottomAnchor에서 constant([+]: safeArea로부터 밑으로 ,[-]: safeArea로부터 위로)
//        scrollView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -30).isActive = true
//
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        navigationController?.navigationBar.tintColor = .blue
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//
//    }
    
    func buildButton(){
        // 네비게이션 바에 버튼 추가
        let rightButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonTapped))
        navigationItem.rightBarButtonItem = rightButton

    }
    @objc func doneButtonTapped() {
           // Done 버튼을 탭했을 때의 동작을 구현
           print("Done 버튼 탭됨!")
       }
    
}

