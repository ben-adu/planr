package ca.sheridancollege.beans;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="json")
public class jsontest {

@Id
@GeneratedValue(strategy = GenerationType.AUTO)
@Column(name = "eventID")
private Long itemId;
	


}
