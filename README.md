# Inspired by Angular Module

[Angular Module](https://angular.io/guide/architecture-modules)

# Code Example

AppRouting.swift
```
let appRoutes: Routes = [
    Route(
        path: "",
        component: AppPage.self
    )
]
```

AppPage.swift
```
struct AppPage: Component {
    @ObservedObject var viewModel: AppViewModel
    
    static func createInstance() -> AppPage {
        return AppPage(viewModel: AppViewModel())
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("AppView works!")
                Spacer()
            }
            HStack {
                Button {
                    
                } label: {
                    Text("Go to App1FirstPage")
                }
                Spacer()
            }
            Spacer()
        }
    }
}
```

# First Priority To Do

- [ ] appRoutes can route to app1Routes
- [ ] a Component can route with `context.pushRoute("/app1/first")`
- [ ] Component.createInstance can inject dependency.

# Second Priority To Do

- [ ] a Component can be a View or UIViewController
