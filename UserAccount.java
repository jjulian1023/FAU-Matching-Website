package edu.fau.group2.ourproject.model;
import java.time.LocalDate;
import java.util.List;

//This class represents Professional interests
public class UserAccount {

	//declaring variables
	private String Name;
	private String LastName;
	private String Gender;
	private String Email;
	private String Education;
	private String ProfessionalInterests;
	private String PersonalInterests;
	private String username;
	private String password;
	private int UserId;
	private LocalDate datejoined;
	
	
	public UserAccount() {
		
	}
	public UserAccount(String name, String lastName, String gender, String email, String education, String professionalInterests, 
			String personalInterests, String Username, String Password, LocalDate datejoined) {
		
		super();
		
		this.setName(name);
		this.setLastName(lastName);
		this.setGender(gender);
		this.setEmail(email);
		this.setEducation(education);
		this.setProfessionalInterests(professionalInterests);
		this.setPersonalInterests(personalInterests);
		this.setUsername(Username);
		this.setPassword(Password);
		this.setDateJoined(datejoined);
		
		
		
	}
	
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getEducation() {
		return Education;
	}
	public void setEducation(String education) {
		Education = education;
	}
	public String getProfessionalInterests() {
		return ProfessionalInterests;
	}
	public void setProfessionalInterests(String professionalInterests) {
		ProfessionalInterests = professionalInterests;
	}
	public String getPersonalInterests() {
		return PersonalInterests;
	}
	public void setPersonalInterests(String personalInterests) {
		PersonalInterests = personalInterests;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int string) {
		UserId = string;
	}
	/*@return the datejoined*/
	public LocalDate getDateJoined(){
		return datejoined;
	}
	/*@param datejoined the datejoined to set*/
	public void setDateJoined(LocalDate datejoined){
		this.datejoined = datejoined;
	}
		
	public static List<UserAccount> getAll() {
		return null;
	}
	
	
	
}
