package com.flight_reservation.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight_reservation.dto.ReservationRequest;
import com.flight_reservation.entity.Flight;
import com.flight_reservation.entity.Passenger;
import com.flight_reservation.entity.Reservation;
import com.flight_reservation.repository.FlightRepository;
import com.flight_reservation.repository.PassengerRepository;
import com.flight_reservation.repository.ReservationRepository;

import com.flight_reservation.utilities.PDFgenerator;




@Service
public class ReservationServiceImpl implements ReservationService {

	
	@Autowired
	private PDFgenerator pdfGenerate;
	@Autowired
	private PassengerRepository passengerRepo;
	
	@Autowired
	private FlightRepository flightRepo;
	
	@Autowired
	private ReservationRepository reservationRepo;
	
	@Override
	public Reservation bookFlight(ReservationRequest request) {
//		String firstName= request.getFirstName();
//		String lastName= request.getLastName();
//		String middleName= request.getMiddleName();
//		String email= request.getEmail();
//		String phone =request.getPhone();
		   
		
		Passenger passenger= new Passenger();
		passenger.setFirstName(request.getFirstName());
		passenger.setLastName(request.getLastName());
		passenger.setMiddleName(request.getMiddleName());
		passenger.setEmail(request.getEmail());
		passenger.setPhone(request.getPhone());
		passengerRepo.save(passenger);
		
		long flightId = request.getFlightId();
	Optional<Flight> findById = flightRepo.findById(flightId);
	Flight flight = findById.get();
	
	Reservation reservation= new Reservation();
	reservation.setFlight(flight);
	reservation.setPassenger(passenger);
	reservation.setCheckedIn(false);
	reservation.setNumberOfBags(0);
	
	String filePath = "E:\\STS-22Aug\\Flight_Reservation_app_5\\tickets\\reservation"+reservation.getId()+".pdf";
	
	reservationRepo.save(reservation);
	

//	pdfGenerate.generatePDF(filePath+reservation.getId()+".pdf", request.getFirstName(), request.getEmail(), request.getPhone(), flight.getOperatingAirlines(), flight.getDateOfDeparture(), flight.getDepartureCity(), flight.getArrivalCity());
	pdfGenerate.generatePDF(reservation, filePath);


	
	return reservation;
	}

}
