package su.emp.model;
import org.mybatis.spring.SqlSessionTemplate;

public class EmpDAOImple implements EmpDAO {


	private SqlSessionTemplate sqlMap;	
	//생성자 방식
	public EmpDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}



	public int empAdd(EmpDTO dto){
		
		int count=sqlMap.insert("empInsert", dto);		
		return count;		
	}

}
