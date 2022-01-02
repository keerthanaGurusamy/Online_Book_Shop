package com.onlinebookshop.dao;

import java.util.List;

import com.onlinebookshop.model.Userdetails;

public interface UserDetailsDao {

	public void insertUser(Userdetails user);
	public Userdetails admin(String email_id,String password);
	public Userdetails validateUser(String email_id,String password);
	public void update(String email_id,String password);
	public void deletedDetails(String delete);
	public List<Userdetails> viewUser();
	public int findUserId(String emailId);
	public int walletbal(int userid);
	public int  updatewall(Userdetails userdetails);
}
