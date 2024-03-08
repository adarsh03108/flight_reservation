package com.flight_reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight_reservation.dto.ReservationRequest;
import com.flight_reservation.entity.Reservation;
import com.flight_reservation.service.ReservationService;
import com.flight_reservation.utilities.PDFgenerator;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(ReservationRequest request,ModelMap model){
//		System.out.println(request.getFlightId());
		Reservation reservationId = reservationService.bookFlight(request);
		model.addAttribute("reservationId", reservationId);
//		PDFgenerator pdf= new PDFgenerator();
		
		return"confirmReservation";
	}
	

}
