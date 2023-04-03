package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Sirohi;
import com.util.SirohiUtil;

public class SirohiDao {
	
	
	public static void insertSirohi(Sirohi s) {
		 
		try {
			Connection conn=SirohiUtil.createConnection();
			String sql="insert into sirohi(name,email,address,dob,mobile,gender,quali,hobby) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,s.getName());
			pst.setString(2, s.getEmail());
			pst.setString(3,s.getAddress());
			pst.setString(4, s.getDob());
			pst.setLong(5, s.getMobile());
			pst.setString(6, s.getGender());
			pst.setString(7, s.getQuali());
			pst.setString(8,s.getHobby());
			pst.executeUpdate();
		} catch (Exception e) {
              e.printStackTrace();
		}
	}
	
	public static List<Sirohi> getAllSirohi(){
		List<Sirohi> list=new ArrayList<Sirohi>();
		try {
			Connection conn=SirohiUtil.createConnection();
			String sql="select * from sirohi";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				Sirohi s=new Sirohi();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setEmail(rs.getString("email"));
				s.setAddress(rs.getString("address"));
				s.setDob(rs.getString("dob"));
				s.setMobile(rs.getLong("mobile"));
				s.setGender(rs.getString("gender"));
				s.setQuali(rs.getString("quali"));
				s.setHobby(rs.getString("hobby"));
			    list.add(s);
			}
			
		} catch (Exception e) {
		  e.printStackTrace();
		}
		
		return list;
		
	}
	
	public static Sirohi getSirohi(int id){
		Sirohi s=null;
		try {
			Connection conn=SirohiUtil.createConnection();
			String sql="select * from sirohi where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				 s=new Sirohi();
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setEmail(rs.getString("email"));
				s.setAddress(rs.getString("address"));
				s.setDob(rs.getString("dob"));
				s.setMobile(rs.getLong("mobile"));
				s.setGender(rs.getString("gender"));
				s.setQuali(rs.getString("quali"));
				s.setHobby(rs.getString("hobby"));
			    
			}
			
		} catch (Exception e) {
		  e.printStackTrace();
		}
		
		return s;
		
	}
	
	public static void updateSirohi(Sirohi s) {
		 
		try {
			Connection conn=SirohiUtil.createConnection();
			String sql="update sirohi set name=?,email=?,address=?,dob=?,mobile=?,gender=?,quali=?,hobby=? where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,s.getName());
			pst.setString(2, s.getEmail());
			pst.setString(3,s.getAddress());
			pst.setString(4, s.getDob());
			pst.setLong(5, s.getMobile());
			pst.setString(6, s.getGender());
			pst.setString(7, s.getQuali());
			pst.setString(8,s.getHobby());
			pst.setInt(9, s.getId());
			pst.executeUpdate();
		} catch (Exception e) {
              e.printStackTrace();
		}
	}
	
	public static void deleteSirohi(int id) {
		try {
			Connection conn=SirohiUtil.createConnection();
			String sql="delete from sirohi where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
	        pst.setInt(1, id);
	         pst.executeUpdate();
		} catch (Exception e) {
           e.printStackTrace();
           }
         
	}

}
