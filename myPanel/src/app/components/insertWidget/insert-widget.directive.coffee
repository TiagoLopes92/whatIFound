angular.module 'myPanel'
  .directive 'insertWidget', ()->
    diretive =
      restrict: 'E'
      templateUrl: 'app/components/insertWidget/insert-bar.html'
      replace: true