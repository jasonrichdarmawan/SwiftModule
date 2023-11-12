# Inspired by Angular Module

[Angular Module](https://angular.io/guide/architecture-modules)

# Architecture

![Architecture](./README/SwiftModule%20-%20Module%20and%20Component.drawio.png)

# Code Example

AppRouting.swift
```
let appRoutes: Routes = [
    Route(
        path: "",
        loadComponent: {
            return AppPage(viewModel: AppViewModel())
        }
    ),
    Route(
        path: "app1",
        loadChildren: {
            return app1Module
        }
    ),
    Route(
        path: "app2",
        loadChildren: {
            return app2Module
        }
    )
]
```

AppPage.swift
```
struct AppPage: Component {
    @ObservedObject var viewModel: AppViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("AppView works!")
                Spacer()
            }
            HStack {
                Button {
                    Router.route(path: "app1/firstPage")
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
