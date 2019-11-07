import 'package:flutter/material.dart';

double iconSize = 30.0;
CarList carList = CarList(
	cars: [
		Car(
			companyName: 'RollsRoyce',
			carName: 'Rolls',
			price: 2100,
			imgList: [
				"rolls.jpeg",
				"lend.jpg"
			],
			offerDetails: [
				{
					Icon(Icons.bluetooth, size: iconSize,): 'Automatic'
				},
				{
					Icon(Icons.airline_seat_individual_suite, size: iconSize,): '4 Seats'
				},
				{
					Icon(Icons.pin_drop, size: iconSize,): "6.4L"
				},
				{
					Icon(Icons.shutter_speed, size: iconSize,): '5HP'
				},
				{
					Icon(Icons.invert_colors, size: iconSize,): 'All Colors'
				}
			],
			specifications: [
				{
					Icon(Icons.av_timer, size: iconSize,): {
						'Milegp(upto)':'14.2kmpl'
					}
				},
				{
					Icon(Icons.power, size: iconSize,): {
						'Engine(upto)':'3996 cc'
					}
				},
				{
					Icon(Icons.assignment_late, size: iconSize,): {
						'BHP': '700'
					}
				},
				{
					Icon(Icons.account_balance_wallet, size: iconSize,): {
						'More Specs': '14.2kmpl'
					}
				}
			],
			features: [
				{
					Icon(Icons.bluetooth, size: iconSize,): 'bluetooth'
				},
				{
					Icon(Icons.usb, size: iconSize,): 'USB port'
				},
				{
					Icon(Icons.power_settings_new, size: iconSize,): 'Keyless'
				},
				{
					Icon(Icons.android, size: iconSize,): 'Android Auto'
				},
				{
					Icon(Icons.ac_unit, size: iconSize,): 'AC'
				}
			]
		),
		Car(
			companyName: 'Lightema',
			carName: 'bugatti',
			price: 4200,
			imgList: [
				"assets/rent/bugatti.jpeg",
				"assets/rent/ccc.jpeg",
				'assets/rent/lambo.jpeg'
			],
			offerDetails: [
				{
					Icon(Icons.autorenew, size: iconSize,): 'Automatic'
				},
				{
					Icon(Icons.airline_seat_legroom_extra, size: iconSize,): '2 Seats'
				},
				{
					Icon(Icons.pin_drop, size: iconSize,): "6.8L"
				},
				{
					Icon(Icons.shutter_speed, size: iconSize,): '7HP'
				},
				{
					Icon(Icons.invert_colors, size: iconSize,): 'Variant Colors'
				}
			],
			specifications: [
				{
					Icon(Icons.av_timer, size: iconSize,): {
						'Milegp(upto)':'14.2kmpl'
					}
				},
				{
					Icon(Icons.power, size: iconSize,): {
						'Engine(upto)':'3996 cc'
					}
				},
				{
					Icon(Icons.assignment_late, size: iconSize,): {
						'BHP': '700'
					}
				},
				{
					Icon(Icons.account_balance_wallet, size: iconSize,): {
						'More Specs': '14.2kmpl'
					}
				}
			],
			features: [
				{
					Icon(Icons.bluetooth, size: iconSize,): 'bluetooth'
				},
				{
					Icon(Icons.usb, size: iconSize,): 'USB port'
				},
				{
					Icon(Icons.power_settings_new, size: iconSize,): 'Keyless'
				},
				{
					Icon(Icons.android, size: iconSize,): 'Android Auto'
				},
				{
					Icon(Icons.ac_unit, size: iconSize,): 'AC'
				}
			]
		),
	]
);

class CarList {
	List<Car> cars;
	
	CarList({
		@required this.cars
});
}


class Car {
	String companyName;
	String carName;
	int price;
	List<String> imgList;
	List<Map<Icon, String>> offerDetails;
	List<Map<Icon, String>> features;
	List<Map<Icon, Map<String, String>>> specifications;
	
	Car({
		@required this.companyName,
		@required this.carName,
		@required this.price,
		@required this.offerDetails,
		@required this.features,
		@required this.specifications,
		@required this.imgList,
});
	
}
