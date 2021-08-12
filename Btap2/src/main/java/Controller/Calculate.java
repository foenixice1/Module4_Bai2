package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Calculate {

    @GetMapping("/maytinh")
    public String show() {
        return "WEB-INF/show.jsp";
    }

    @RequestMapping("/tinh")
    public String tinh(Model model, @RequestParam double giatri1,double giatri2, String action) {
        switch (action) {
            case "cong" :
                double ketqua = giatri1 + giatri2;
                model.addAttribute("ketqua" , ketqua);
                break;
            case "tru" :
                ketqua = giatri1 - giatri2;
                model.addAttribute("ketqua" , ketqua);
                break;
            case "nhan" :
                ketqua = giatri1 * giatri2;
                model.addAttribute("ketqua" , ketqua);
                break;
            case "chia" :
                if (giatri2 == 0) {
                    model.addAttribute("ketqua" , "Phai lon hon 0");
                } else {
                    ketqua = giatri1 / giatri2;
                    model.addAttribute("ketqua" , ketqua);
                }
                break;
        }
        return "WEB-INF/show.jsp";
    }
}
