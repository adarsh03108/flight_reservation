package com.flight_reservation.controller;



import java.util.List;
import java.util.Optional;
import java.util.Date;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_reservation.entity.Flight;
import com.flight_reservation.repository.FlightRepository;


@Controller
public class FlightController {
	
	@Autowired
	private  FlightRepository flightRepo;
	private Optional<Flight> findById;
	
	@RequestMapping("/findFlights")
	public String findFlights(@RequestParam("from") String from,@RequestParam("to") String to,@RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate, ModelMap model){
		List<Flight> findFlights = flightRepo.findFlights(from, to ,departureDate);
		System.out.println(findFlights);
	model.addAttribute("findFlights", findFlights);
		return "displayFlights";
	}
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId")Long flightId ,ModelMap model) {
	Optional<Flight>findById = flightRepo.findById(flightId);
		Flight flight = findById.get();
//		System.out.println(flight.getId());
//		System.out.println(flight.getArrivalCity());
//		System.out.println(flight.getDepartureCity());
//		System.out.println(flight.getFlightNumber());
//		System.out.println(flight.getOperatingAirlines());
		model.addAttribute("flight",flight);
	System.out.println(flightId);
		return "showReservation";
	}
	
	
	}


