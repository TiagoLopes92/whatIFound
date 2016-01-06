(function() {
  'use strict';

  angular
    .module('myDailyStory')
    .directive('acmeNavbar', acmeNavbar);

  /** @ngInject */
  function acmeNavbar() {
    var directive = {
      restrict: 'E',
      templateUrl: 'app/components/navbar/navbar.html',
      controller: NavbarController,
      controllerAs: 'vm'
    };

    return directive;

    /** @ngInject */
    function NavbarController(moment) {
      var vm = this;


    }
  }

})();
