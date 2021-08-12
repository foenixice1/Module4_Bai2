package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Sandwich {

    @GetMapping("/home")
    public String show() {
        return "WEB-INF/show.jsp";
    }

    @RequestMapping("/save")
    public String save(Model model, @RequestParam("condiments") String[] condiment) {
        model.addAttribute("condiments", condiment);
        return "WEB-INF/show.jsp";
    }

}
