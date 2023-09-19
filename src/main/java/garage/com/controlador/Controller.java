package garage.com.controlador;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@org.springframework.stereotype.Controller
@RequestMapping ("/garageHomeURL")
public class Controller {

    @RequestMapping("/clientListURL")
    public String clientListMethod (Model theModel){

        return "clientListFile";
    }
}
