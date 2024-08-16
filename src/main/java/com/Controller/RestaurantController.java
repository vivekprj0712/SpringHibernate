package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.Entity.RestaurantEntity;
import com.Repository.RestaurantRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("listrestaurant")
	public String listRestaurant(Model model) {
		List<RestaurantEntity> restaurants =  restaurantRepo.findAll();
		model.addAttribute("restaurants", restaurants);
		return "ListRestaurant";
	}
	
	@GetMapping("deleterestaurant")
	public String deleteRestaurant(Model model , @RequestParam("restaurantId") Integer restaurantId) {
		restaurantRepo.deleteById(restaurantId);
		return "redirect:/listrestaurant";
	}
	
	
}
