angular.module 'myPanel'
  .controller 'MainController', ($scope, $timeout, booksService, toastr, $mdSidenav) ->
    'ngInject'
    vm = this
    activate = ->
      getWebDevTec()
      $timeout (->
        vm.classAnimation = 'rubberBand'
        return
      ), 4000
      return

    showToastr = ->
      toastr.info 'Fork <a href="https://github.com/Swiip/generator-gulp-angular" target="_blank"><b>generator-gulp-angular</b></a>'
      vm.classAnimation = ''
      return

    getWebDevTec = ->
      vm.awesomeThings = booksService.getBooks()
      angular.forEach vm.awesomeThings, (awesomeThing) ->
        awesomeThing.rank = Math.random()
        return
      return

    $scope.openLeftMenu = ->
      $mdSidenav('sidebar').toggle()

    vm.awesomeThings = []
    vm.classAnimation = ''
    vm.creationDate = 1452462327434
    vm.showToastr = showToastr
    activate()
    return
