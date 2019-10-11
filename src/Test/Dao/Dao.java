package Test.Dao;

import java.sql.*;
import java.util.ArrayList;
import Test.Dto.Dto;


public class Dao {
	public void insert(Connection conn, Dto dto) throws SQLException {
		String sql = "insert into test_board(name,title,content,writeday) values(?,?,?,now())";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getName());
		pstmt.setString(2, dto.getTitle());
		pstmt.setString(3, dto.getContent());
		pstmt.execute();
		pstmt.close();
		conn.close();
	}
	
	public ArrayList<Dto> select(Connection conn) throws SQLException {
		ArrayList<Dto> list = new ArrayList<Dto>();
		String sql = "select * from test_board order by id desc";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
		int i = rs.getInt("id");
		String n = rs.getString("name");
		String t = rs.getString("title");
		String c = rs.getString("content");
		String w = rs.getString("writeday");
		int r = rs.getInt("readnum");
		Dto dto = new Dto(i,n,t,c,w,r);
		list.add(dto);
		}
		
		return list;
	}
}
