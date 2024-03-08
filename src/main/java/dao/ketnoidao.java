package dao;
import java.sql.*;

public class ketnoidao {
	public Connection cn;
	public void ketnoi() throws Exception{
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Da xac nhan dc he quan tri co so du lieu");
		String url = "jdbc:sqlserver://DESKTOP-C3L040N:1433;databaseName=DuanCay;user=sa;password=123";
		cn=DriverManager.getConnection(url); 
		System.out.print("Da ket noi");
	}
}
