package su.message.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MessageDAOImple implements MessageDAO {
	private SqlSessionTemplate sqlMap;

	public MessageDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	}

