angular.module('app', ['app.controllers', 'ui.router'])
.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
	$stateProvider
	.state('dashboard', {
		url: "/dashboard",
		templateUrl: "templates/dashboard.html",
		controller: "DashboardCtrl"
	})

	$urlRouterProvider.otherwise("/dashboard");
});