package Test.Command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import Test.Dao.Dao;
import Test.Dto.Dto;
import Test.Jdbc.Connect;

public class ListCommand {
	public ArrayList<Dto> listCom() throws SQLException {
		Connection conn = Connect.getConnection();
		Dao dao = new Dao();
		ArrayList<Dto> list = dao.select(conn);
		return list;
	}
}
