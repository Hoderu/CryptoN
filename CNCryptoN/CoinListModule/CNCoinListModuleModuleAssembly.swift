//
//  CNCoinListModuleModuleAssembly.swift
//  Project:   CNCryptoN
//
//  Module:   CNCoinListModule
//  Description: Table with list of coins
//
//  By a.reshetnikov  06.03.2018
//  MIPT 2018
//

import UIKit
import Typhoon

public class CNCoinListModuleModuleAssemblyModuleAssembly: TyphoonAssembly {

	enum ViperSEL: Selector {
        case view = "view"
        case interactor = "interactor"
        case router = "router"
        case output = "output"
    }

    @objc public dynamic func viewCNCoinListModuleModuleAssembly() -> AnyObject {
		return TyphoonDefinition.withClass(CNCoinListModuleModuleAssemblyView.self) {
			(definition) in 
			
			/*
			//use for init from nib
			definition.useInitializer("initWithNibName:bundle:") {
				(initializer) in

				initializer.injectParameterWith(TyphoonConfig("//XibName//"))
				initializer.injectParameterWith(NSBundle.mainBundle())
			}*/

			definition.injectProperty(ViperSEL.output.rawValue, with: self.presenterCNCoinListModuleModuleAssembly())
		}
	}


    @objc public dynamic func interactorCNCoinListModuleModuleAssembly() -> AnyObject {
		return TyphoonDefinition.withClass(CNCoinListModuleModuleAssemblyInteractor.self){
            (definition) in
            
            definition.injectProperty(ViperSEL.output.rawValue, with: self.presenterCNCoinListModuleModuleAssembly())
        }
	}


    @objc public dynamic func presenterCNCoinListModuleModuleAssembly() -> AnyObject {
		return TyphoonDefinition.withClass(CNCoinListModuleModuleAssemblyPresenter.self){
            (definition) in
            
            definition.injectProperty(ViperSEL.view.rawValue, with: self.viewCNCoinListModuleModuleAssembly())
            definition.injectProperty(ViperSEL.interactor.rawValue, with: self.interactorCNCoinListModuleModuleAssembly())
            definition.injectProperty(ViperSEL.router.rawValue, with: self.routerCNCoinListModuleModuleAssembly())
        }
	}


    @objc public dynamic func routerCNCoinListModuleModuleAssembly() -> AnyObject {
		return TyphoonDefinition.withClass(CNCoinListModuleModuleAssemblyRouter.self){
            (definition) in
           
        }
	}
}
