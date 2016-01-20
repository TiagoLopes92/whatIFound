angular.module 'myPanel'
  .directive 'navbar', ->

    NavbarController = (moment) ->
      'ngInject'
      vm = this
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
