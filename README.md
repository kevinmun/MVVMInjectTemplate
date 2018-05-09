# MVVMInjectTemplate
Xcode template for MVVM with dependency injection using Swinject. Compatible with Xcode 9

# Dependencies
Add these dependencies using pod

Swinject

# How to use
Place entire xctemplate folder into 'Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/Application/' in XCode package content

# Overview Diagram

![Alt text](/Overview.png?raw=true)


Above is a simplified overview of the MVVM + Router architecture. UIView/UIViewController along with their nib files if present, are considered the view part and should only be handling view/ gesture interaction / animation logics. The ViewModel will handle all business interactions and also store the models required for the view while abstracting the view from directly interacting with the model. The router manages the routing logic of the module, subsequent viewcontrollers will be built by the routers using their respective Assemblers, thus allowing the parent router to pass itself as a dependency, if needed by the child router. Each reference are done via protocol and not with their concrete implementation to provide future flexibility and reusage.
