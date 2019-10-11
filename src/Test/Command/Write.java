package Test.Command;

import java.sql.Connection;
import java.sql.SQLException;
import Test.Dao.Dao;
import Test.Dto.Dto;
import Test.Jdbc.Connect;

public class Write {
	public void write(Dto dto) throws SQLException {
		Connection conn = Connect.getConnection();
		Dao dao = new Dao();
		dao.insert(conn, dto);
	}
}
