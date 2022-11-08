package com.saeyan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.saeyan.dto.PetVO;
import com.saeyan.dto.PetVO;

import util.DBManager;

public class PetDAO {
	private PetDAO() {

	}
	private static PetDAO instance = new PetDAO();
	public static PetDAO getInstance() {
		return instance;
	}
	public List<PetVO> selectAllPets() {
		String sql = "select * from pet order by name desc";
		List<PetVO> list = new ArrayList<PetVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				PetVO pVo =new PetVO();
				pVo.setName(rs.getString("name"));
				pVo.setPrice(rs.getInt("price"));
				pVo.setPictureUrl(rs.getString("pictureUrl"));
				pVo.setDescription(rs.getString("description"));
				list.add(pVo);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,pstmt,rs);

		}
		return list;
	}

	public void insertPet(PetVO pVo) {
		String sql = "insert into pet values(?,?,?,?)";
		Connection conn =null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pVo.getName());
			pstmt.setInt(2,pVo.getPrice());
			pstmt.setString(3,pVo.getPictureUrl());
			pstmt.setString(4,pVo.getDescription());
			pstmt.executeUpdate();

		}catch (Exception e) {
			e.printStackTrace();

		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	public PetVO selectPetByname(String name) {
		String sql = "select * from pet where name = ?";
		PetVO pVo = null;
		try {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs =null;
			try {
				conn = DBManager.getConnection();
				pstmt= conn.prepareStatement(sql);
				pstmt.setString(1,name);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					pVo = new PetVO();
					pVo.setName(rs.getString("name"));
					pVo.setPrice(rs.getInt("price"));
					pVo.setPictureUrl(rs.getString("pictureUrl"));
					pVo.setDescription(rs.getString("description"));

				}

			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn,pstmt,rs);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pVo;
	} 
	public void updatePet(PetVO pVo) {
		String sql = "update pet set price=?, pictureurl=?, desription? where name=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,pVo.getName());
			pstmt.setInt(2, pVo.getPrice());
			pstmt.setString(3,pVo.getPictureUrl());
			pstmt.setString(4,pVo.getDescription());
			pstmt.executeUpdate();

		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	public void deletePet(String name) {
		String sql="delete pet where name=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
		
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn,pstmt);
		}
	}
}

