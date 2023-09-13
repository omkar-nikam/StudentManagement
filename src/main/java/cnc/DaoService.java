package cnc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class DaoService {
	@Autowired
	private HibernateTemplate hibernatetemplate;
	
	@Transactional
	public void addData(Emp emp) {
		this.hibernatetemplate.saveOrUpdate(emp);
	}
	
	public List<Emp> displayData() {
		List<Emp> list=this.hibernatetemplate.loadAll(Emp.class);
		return list;
		}
	
	
	public Emp editData(int id) {
		 Emp emp=this.hibernatetemplate.get(Emp.class,id);
		return emp;
		}
	
	@Transactional
	public void deleteData(int id) {
		Emp emp=this.hibernatetemplate.get(Emp.class,id);
		this.hibernatetemplate.delete(emp);
		}
	
	
	
	
}
