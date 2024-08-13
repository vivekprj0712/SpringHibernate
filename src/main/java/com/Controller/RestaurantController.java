package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.Entity.RestaurantEntity;
import com.Repository.RestaurantRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class RestaurantController {

	@Autowired
	RestaurantRepository restaurantRepo;
	
	@GetMapping("newrestaurant")
	public String newRestaurant() {
		return "NewRestaurant";
	}
	
	@PostMapping("saverestaurant")
	public String saveRestaurant(RestaurantEntity restaurantEntity) {
		restaurantRepo.save(restaurantEntity);
		return "Success";
	}
	
}
