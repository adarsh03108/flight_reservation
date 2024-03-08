package com.checkin.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.checkin.app.integration.ReservationRestfulClientImpl;
import com.checkin.app.integration.dto.Reservation;
import com.checkin.app.integration.dto.ReservationUpdateRequest;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationRestfulClientImpl restClient;
	
	@RequestMapping("/startCheckIn")
	public String startCheckIn() {
		return "startCheckIn";
	}
	
	@RequestMapping("/proceedCheckIn")
	public String proceedCheckIn(@RequestParam("id")Long id,ModelMap model) {
	Reservation reservation = restClient.findReservation(id);
//	System.out.println(reservation.getId());
//	System.out.println(reservation.getNumberOfBags());
//	System.out.println(reservation.isCheckedIn());
//	System.out.println(reservation.getPassenger().getFirstName());
	model.addAttribute("reservation", reservation);
		return "displayReservation";
	}
	
	@RequestMapping("/proceedToCheckIn")
	public String proceedToCheckIn(@RequestParam("id")Long id,@RequestParam("numberOfBags") int numberOfBags) {
		ReservationUpdateRequest request=new ReservationUpdateRequest();
		request.setId(id);
		request.setNumberOfBags(numberOfBags);
		request.setCheckInStatus(true);
		
		restClient.updateReservation(request);
		return "confirmReservation";
	}

}
