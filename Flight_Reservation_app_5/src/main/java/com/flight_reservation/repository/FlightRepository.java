package com.flight_reservation.repository;


import java.util.List;
import java.util.Date;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.flight_reservation.entity.Flight;




public interface FlightRepository extends JpaRepository<Flight, Long> {

//	@Query("from Flight where departureCity=:departureCity and arrivalCity=:arrivalCity and dateOfDeparture=:dateOfDeparture")
//	List<Flight> findFlights(@Param("departureCity")String from, @Param("arrivalCity")String to ,@Param("dateOfDeparture")Date departureDate);
	
	
	  @Query("from Flight where departureCity=:departureCity and arrivalCity=:arrivalCity and dateOfDeparture=:dateOfDeparture")
	    List<Flight> findFlights(
	            @Param("departureCity") String from,
	            @Param("arrivalCity") String to,
	            @Param("dateOfDeparture") Date departureDate
	    );

}
