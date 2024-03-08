package com.checkin.app.integration;

import org.springframework.web.bind.annotation.RequestBody;

import com.checkin.app.integration.dto.Reservation;
import com.checkin.app.integration.dto.ReservationUpdateRequest;



public interface ReservationRestfulClient {
	
	public Reservation findReservation(Long id);
	public Reservation updateReservation(@RequestBody ReservationUpdateRequest request);



}
