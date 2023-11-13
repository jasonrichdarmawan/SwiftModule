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
            return AppPage(viewModel: AppViewModel.shared())
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

# FAQ

1. What is inside the `app1Module`?

App1Module.swift
```
let app1Module = Module(
    initialPath: "firstPage",
    routes: app1Routes
)
```

App1Routing.swift
```
let app1Routes: Routes = [
    Route(
        path: "firstPage",
        loadComponent: {
            return App1FirstPage(
                appViewModel: AppViewModel.shared(),
                viewModel: App1FirstViewModel.shared(
                    counter: 3
                )
            )
        }
    ),
    Route(
        path: "secondPage",
        loadComponent: {
            return App1SecondPage(
                viewModel: App1SecondViewModel.shared()
            )
        }
    )
]
```

# First Priority To Do

- [x] appRoutes can route to app1Routes
- [x] a Component can route with `Router.route("/app1/first")`
- [ ] ~~Component.createInstance can inject dependency.~~
- [ ] recursive function to handle more than 2 nested routes i.e. "app1/feature1/firstPage"
- [ ] push / modal transition.
- [ ] loadComponent accept parameters.
- [ ] loadChildren accept parameters.
- [x] shared state.

    Definition of done:
    1. AppPage -> 2
    2. App1FirstPage -> 3
    3. App1SecondPage -> 4
    4. App2FirstPage -> 5
    5. App2SecondPage -> 6
    6. App1FirstPage
    
        (6) App1FirstPage should use the same App1FirstViewModel and do not create new ViewModel.

# Second Priority To Do

- [ ] a Component can be a View or UIViewController
