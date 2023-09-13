package cnc;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class MyController {

	@Autowired
	private DaoService daoservice;

@RequestMapping("/")
public String index() {
	return "index";
}

@RequestMapping("/index")
public String home() {
	return "index";
}


@RequestMapping("/submit")
public RedirectView submit(@ModelAttribute("emp")Emp emp) {
	daoservice.addData(emp);
	RedirectView rv=new RedirectView();
	rv.setUrl("display");
	return rv;
}

@RequestMapping("/display")
public String submit(Model model) {
	List <Emp> list=daoservice.displayData();
	model.addAttribute("list",list);
	return "display";
}

@RequestMapping("/edit/{id}")
public String edit(@PathVariable("id")int id,Model mv) {
	Emp emp=daoservice.editData(id);
	mv.addAttribute("emp",emp);
	return "edit";
}

@RequestMapping("/delete/{id}")
public RedirectView delete(@PathVariable("id")int id,HttpServletRequest request) {
	daoservice.deleteData(id);
	RedirectView rv=new RedirectView();
	rv.setUrl(request.getContextPath()+"/display");
	
	return rv;
}

	
}
