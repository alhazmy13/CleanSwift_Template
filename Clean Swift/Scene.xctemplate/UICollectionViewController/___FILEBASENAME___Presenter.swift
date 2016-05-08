//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//  Refactoring by @Alhazmy13
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___PresenterInput {
  func doSomething(request: ___FILEBASENAMEASIDENTIFIER___Request)
}

class ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___PresenterInput {
   var output: ___FILEBASENAMEASIDENTIFIER___ViewControllerInput!
   var service: ___FILEBASENAMEASIDENTIFIER___Service!

  // MARK: initial var
  init(){
        service = ___FILEBASENAMEASIDENTIFIER___Service()
        service.output = self
    }
  // MARK: Presentation logic
  
  func doSomething(request: ___FILEBASENAMEASIDENTIFIER___Request) {
        service.doSomething(request);
    }
    
    func presentSomething(response: ___FILEBASENAMEASIDENTIFIER___Response){
        let viewModel = ___FILEBASENAMEASIDENTIFIER___ViewModel()
        output.displaySomething(viewModel)
    }

}

extension ___FILEBASENAMEASIDENTIFIER___Presenter: ___FILEBASENAMEASIDENTIFIER___ServiceOutput {
}