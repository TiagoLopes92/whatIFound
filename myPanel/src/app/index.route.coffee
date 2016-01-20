angular.module 'myPanel'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'books',
        url: '/books'
        templateUrl: 'app/books/books.html'
        controller: 'BooksController'
        controllerAs: 'booksCtrl'

    $urlRouterProvider.otherwise '/'
