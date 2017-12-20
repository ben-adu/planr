angular.module('directoryApp', [])
.controller('directoryController',
		function($scope) {
			$scope.list = [ {
				name : 'Table',
				quantity : 29
			}, {
				name : 'Disco Ball',
				quantity : 30
			} 
			, {
				name : 'Microphone',
				quantity : 5
			} 
			, {
				name : 'Projector',
				quantity : 1
			}
			, {
				name : 'Bench',
				quantity : 2
			}
			, {
				name : 'Laptop',
				quantity : 2
			}
			, {
				name : 'Mic Stand',
				quantity : 17
			}
			, {
				name : 'Headphone',
				quantity : 10
			}];
			
			$scope.addInventory = function(){
				$scope.list.push({name:$scope.name, quantity:$scope.quantity});
				$scope.name='';
				$scope.quantity='0';
			};
		});