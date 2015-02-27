angular.module('app.controllers', [])
.controller('PlayCtrl', function($scope, $state) {
	$scope.test = 'hello';
})
.controller('LeaderboardCtrl', function($scope, $state) {
	$scope.test = 'hello';
})
.controller('SettingsCtrl', function($scope, $state) {
	$scope.test = 'hello';
	$scope.goHome = function() {
		console.log('goHome');
		$state.go('home');
	}
})
.controller('HomeCtrl', function($scope, $state) {
	$scope.test = 'hello';
});