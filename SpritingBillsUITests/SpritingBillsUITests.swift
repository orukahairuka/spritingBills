//
//  SpritingBillsUITests.swift
//  SpritingBillsTests
//
//  Created by 櫻井絵理香 on 2025/03/04.
//

import XCTest

final class SpritingBillsUITests: XCTestCase {
    
    //テスト開始前に実行
    override func setUpWithError() throws {
        continueAfterFailure = false //失敗した際に中断するかどうかを決めるフラグ

    }
    
    //テスト終了後に実行
    override func tearDownWithError() throws {

    }

    //テスト用メソッド
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()

    }

    //パフォーマンステスト用メソッド
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            //時間を計測したい処理を記述
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
