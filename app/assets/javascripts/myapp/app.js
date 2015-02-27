angular.module('app', ['app.controllers', 'ui.router'])
.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
	$stateProvider
	.state('dashboard', {
		url: "/dashboard",
		templateUrl: "templates/dashboard.html",
		controller: "DashboardCtrl"
	})
	$stateProvider
	.state('inspiration', {
		url: "/inspiration",
		templateUrl: "templates/inspiration.html",
		controller: "InspirationCtrl"
	})

	$urlRouterProvider.otherwise("/dashboard");
});