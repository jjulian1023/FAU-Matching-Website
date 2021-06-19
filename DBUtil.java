package edu.fau.group2.ourproject.util;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import edu.fau.group2.ourproject.configuration.*;
import edu.fau.group2.ourproject.model.*;
import edu.fau.group2.ourproject.services.*;

import java.util.List;
import java.time.LocalDate;

public class DBUtil {

	private final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(Group2JdbcConfig.class);
	private final static ProfInterestsService Prof_Interests_Service =  CONTEXT.getBean(ProfInterestsService.class);
	
	private final static AnnotationConfigApplicationContext CONTEXT1 = new AnnotationConfigApplicationContext(Group2JdbcConfig.class);
	private final static UserAccountService USER_ACCOUNT_SERVICE =  CONTEXT1.getBean(UserAccountService.class);
	
	private final static AnnotationConfigApplicationContext CONTEXT2 = new AnnotationConfigApplicationContext(Group2JdbcConfig.class);
	private final static PersInterestsService PERS_INTERESTS =  CONTEXT2.getBean(PersInterestsService.class);
	
	private final static AnnotationConfigApplicationContext CONTEXT3 = new AnnotationConfigApplicationContext(Group2JdbcConfig.class);
	private final static EducationService EDUCATION =  CONTEXT3.getBean(EducationService.class);
	
	//util for ProfInterestsService

	public static List<ProfInterests> getAllProfInterests(){
		return Prof_Interests_Service.getAll();
	}
	
	public static ProfInterests getByIdProfInterests(int id){
		return Prof_Interests_Service.getById(id);
	}

	public static boolean createProfInterests(ProfInterests t){
		return Prof_Interests_Service.create(t);
	}
	
	public static boolean updateProfInterests(ProfInterests t){
		return Prof_Interests_Service.update(t);
	}
	public static boolean deleteProfInterests(int id){
		return Prof_Interests_Service.delete(id);
	}
	
	
	
	//util for User account details 1

	
	public static List<UserAccount> getAllUserAccount(){
		return USER_ACCOUNT_SERVICE.getAll();
	}
	
	public static UserAccount getByIdUserAccount(int id){
		return USER_ACCOUNT_SERVICE.getById(id);
	}

	public static boolean createUserAccount(UserAccount t){
		return USER_ACCOUNT_SERVICE.create(t);
	}
	
	public static boolean updateUserAccount(UserAccount t){
		return USER_ACCOUNT_SERVICE.update(t);
	}
	public static boolean deleteUserAccount(int id){
		return USER_ACCOUNT_SERVICE.delete(id);
	}
	public static int checkUsernameAndPassword(String username, String password){
		List<UserAccount> userList = USER_ACCOUNT_SERVICE.getAll();
		
		for	(int i = 0 ; i < userList.size() ; i++){
			if (userList.get(i).getUsername().equals(username)){
				if (userList.get(i).getPassword().equals(password)){
					return userList.get(i).getUserId();
				}
				break;
			}
		}
		return -1;
	}
	
	public static List<UserAccount>getUserGreaterThanDateJoined(LocalDate date){
		return USER_ACCOUNT_SERVICE.greaterThanDateJoined(date);
	}
	
	
	//util for personal interests 2
	
	
	public static List<PersInterests> getAllPersInterests(){
		return PERS_INTERESTS.getAll();
	}
	
	public static PersInterests getByIdPersInterests(int id){
		return PERS_INTERESTS.getById(id);
	}

	public static boolean createPersInterests(PersInterests t){
		return PERS_INTERESTS.create(t);
	}
	
	public static boolean updatePersInterests(PersInterests t){
		return PERS_INTERESTS.update(t);
	}
	public static boolean deletePersInterests(int id){
		return PERS_INTERESTS.delete(id);
	}
	
	//util for education 3

	
	public static List<Education> getAllEducation(){
		return EDUCATION.getAll();
	}
	
	public static Education getByIdEducation(int id){
		return EDUCATION.getById(id);
	}

	public static boolean createEducation(Education t){
		return EDUCATION.create(t);
	}
	
	public static boolean updateEducation(Education t){
		return EDUCATION.update(t);
	}
	public static boolean deleteEducation(int id){
		return EDUCATION.delete(id);
	}
	
	
}


