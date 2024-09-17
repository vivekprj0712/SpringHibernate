package com.Entity.OneToOne;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;

@Entity
@Table(name = "Pans")
@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class PanEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer panId;
	String address;
	
	@OneToOne
	@JoinColumn(name = ("citizenId"))
	CitizenEntity citizen;
}
