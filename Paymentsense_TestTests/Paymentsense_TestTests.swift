//
//  Paymentsense_TestTests.swift
//  Paymentsense_TestTests
//
//  Created by Athlosn90 on 19/02/2021.
//  Copyright © 2021 AndreaSanna. All rights reserved.
//

import XCTest
@testable import Paymentsense_Test

class Paymentsense_TestTests: XCTestCase {

      let HomeController = FirstTableView()

      var sut: URLSession!
    
      override func setUp() {
          // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        sut = URLSession(configuration: .default)
      }

      override func tearDown() {
          // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        super.tearDown()
      }
    
    
      func testNetwork() {
            
            let url = URL(string: "https://www.breakingbadapi.com/api/")
    //        Expectation to meet
            let premise = expectation(description: "Completion handler invoked")
            var statusCode: Int?
            var responseError: Error?
            
    //        When
            if let url = url {
            let dataTask = sut.dataTask(with: url) { (data, response, error) in
                
                statusCode = (response as? HTTPURLResponse)?.statusCode
                responseError = error
                premise.fulfill()
                
            }
            dataTask.resume()
            wait(for: [premise], timeout: 5)
            
    //        then
            XCTAssertNil(responseError)
            XCTAssertEqual(statusCode, 200)
            
            }
        }

}
