angular.module('app.controllers', [])
.controller('DashboardCtrl', function($scope, $state) {

	

})
.controller('InspirationCtrl', function($scope, $state) {
	// $scope.test = 'hello';
})
.controller('CategoryCtrl', function($scope, $state, $http) {
	$http.get('/categories.json')
	.success(function(response) {

		$scope.categories = response;
		console.log(response);

	})
	$scope.studentBtn = function(issues) {
		console.log('studentBtn');
		$http.get('/categories/1/issues.json')
		.success(function(response) {

			$scope.issues = response;
			console.log(response);
		});
	}

	$scope.issueBtn = function(inspirations) {
		console.log('issueButton');
		$http.get('/inspirations.json')
		.success(function(response) {

			$scope.inspirations = response
			console.log(response);
		});
	}

	console.log($scope.issueBtn);

		// console.log(categories);
		// $scope.categories = categories;

		// console.log($scope.categories);

	// $scope.student1 = true;
	// $scope.issueOptions = false;

	// $scope.studentBtn = function() {
	// 	return $scope.issueOptions = true;
	// }

	// $scope.studentBtn = function(id) {
	// 	// console.log(id);

	// 	var promise = $http.get('http://localhost:3000/categories')
	// 	.success(function(response) {

	// 		$scope.inspiration = [];
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
	// 	})

	// }
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