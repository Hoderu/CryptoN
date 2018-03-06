//
//  CNCoinListModulePresenter.swift
//  Project:   CNCryptoN
//
//  Module:   CNCoinListModule
//  Description: Table with list of coins
//
//  By a.reshetnikov  06.03.2018
//  MIPT 2018
//

import Foundation

/**
 *  Presenter 
 *	
 */

class CNCoinListModulePresenter: NSObject, CNCoinListModulePresenterOutput, CNCoinListModuleInteractorOutput {

	weak var view: CNCoinListModuleViewInput?
	var interactor: CNCoinListModuleInteractorInput?
	var router: CNCoinListModuleRouterInput?

	@objc internal func setupView() {
		
	}
}
