angular.module('app.controllers', [])
.controller('DashboardCtrl', function($scope, $state) {
	// $scope.test = 'hello';
})
.controller('InspirationCtrl', function($scope, $state) {
	// $scope.test = 'hello';
})
.controller('CategoryCtrl', function($scope, $state, $http) {
	// $http.get(...)
	// .success(function(categories) {
		var categories = [
			{
				id: 1,
				name: 'Student'
			},
			{
				id: 2,
				name: 'Professional'
			},
			{
				id: 3,
				name: 'Personal'
			}
		];

		$scope.categories = categories;

		// console.log($scope.categories.id);
	// })

	// $scope.student1 = true;
	// $scope.issueOptions = false;

	// $scope.studentBtn = function() {
	// 	return $scope.issueOptions = true;
	// }

	$scope.studentBtn = function(id) {
		console.log(id);

		// var promise = $http.get('http://tiny-pizza-server.herokuapp.com/collections/emoller-ang')
		// .success(function(response) {

		// 	$scope.inspiration = [];
		// 	for(var i=0; i<response.length; i++) {

		// 		console.log(i);
		// 		console.log(response[i]);
		// 		console.log(response[i].image);
		// 		console.log(response[i].name);
		// 		console.log(response[i].quote);

		// 			if(response[i].image && response[i].name && response[i].quote) {
		// 				$scope.inspiration.push(response[i]);
		// 				console.log($scope.inspiration);
		// 			}
		// 	}

		// 	console.log(response);
		// })

		// .error(function(err) {
		// 	console.log(err);
		// })

	}
// issue1();
	
})
// .controller('SettingsCtrl', function($scope, $state) {
// 	// $scope.test = 'hello';
// 	// $scope.goHome = function() {
// 	// 	console.log('goHome');
// 	// 	$state.go('home');
// 	// }
// })
// 