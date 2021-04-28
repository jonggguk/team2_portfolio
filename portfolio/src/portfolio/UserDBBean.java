package portfolio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Calendar;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


import myUtil.HanConv;

public class UserDBBean {
	private static UserDBBean instance = new UserDBBean();

	public static UserDBBean getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public int insertUser(UserBean user) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int re = -1;
		int num;

		try {

			conn = getConnection();
			sql = "SELECT max(u_num) FROM pc_user";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				num = rs.getInt(1) + 1;
			} else {
				num = 1;
			}

			sql = "insert into pc_user (u_num,u_name,u_id,u_pwd,u_jumin,u_email,u_address)values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, HanConv.toKor(user.getU_name()));
			pstmt.setString(3, user.getU_id());
			pstmt.setString(4, user.getU_pwd());
			pstmt.setString(5, user.getU_jumin());
			pstmt.setString(6, user.getU_email());
			pstmt.setString(7, HanConv.toKor(user.getU_address()));

			pstmt.executeUpdate();

			re = 1;

		} catch (Exception e) {
			System.out.println("시스템 오류 ");
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return re;
	}

	public int confirmID(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select u_id from pc_user where u_id=?";
		int re = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setNString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				re = 1;
			} else {
				re = -1;
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}
	public int userCheck(String id,String pwd)throws Exception{
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		int re =-1;
		String db_u_pwd = "";
		String sql = "select u_pwd from pc_user where u_id=?";
		
		try {
			conn=getConnection();
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				db_u_pwd = rs.getString("u_pwd");
				if (db_u_pwd.equals(pwd)) {
					re=1;
				}else {
					re=0;
				}
			}else {
				re=-1;
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return re;
		
	}
	public UserBean getUser(String id)throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from pc_user where u_id=?";
		UserBean user = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setNString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new UserBean();
				user.setU_num(rs.getInt("u_num"));
				user.setU_name(rs.getString("u_name"));
				user.setU_id(rs.getString("u_id"));
				user.setU_pwd(rs.getString("u_pwd"));
				user.setU_jumin(rs.getString("u_jumin"));
				user.setU_email(rs.getString("u_email"));
				user.setU_address(rs.getString("u_address"));
			}
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {

		}
		return user;
	
	}
	public int updateUser(UserBean user)throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		int re = -1;
		String sql = "update pc_user set u_pwd = ?,u_email=?,u_address=? where u_id=?";
		try {
			conn =getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getU_pwd());
			pstmt.setString(2, user.getU_email());
			pstmt.setString(3, HanConv.toKor( user.getU_address()));
			pstmt.setString(4, user.getU_id());
			re =pstmt.executeUpdate();
			
			System.out.println("변경 성공");
			pstmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}
}
	
