package garage.com.controlador;

import garage.com.controlador.entity.Client;
import garage.com.dao.DAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@org.springframework.stereotype.Controller
@RequestMapping ("/garageHomeURL")
public class Controller {

/*******************************************************************/

    @Autowired
    private DAO daoClient;

/*******************************************************************/

    @RequestMapping("/clientListURL")
    public String clientListMethod (Model theModel){

        // obtener clientes del dao

        List<Client> clientList = daoClient.getClientList();

        // agregar clientes al modelo

        theModel.addAttribute("garageClientsAttributes", clientList);


        return "clientListFile";
    }

/*******************************************************************/

    @RequestMapping("/addNewClientURL")
    public String addNewClientForm (Model theModel){

        // bind de datos de los clientes

        Client theClient = new Client();

        theModel.addAttribute("addClientAttribute", theClient);

        return "addNewClientFile";
    }

/*******************************************************************/

    @PostMapping("/sendNewClientDataURL")
    public String processNewClientMethod (@ModelAttribute("addClientAttribute") Client theClient){

        // insertar cliente en la base de datos

        daoClient.insertOneNewClient (theClient);

        return "redirect:/garageHomeURL/clientListURL";
    }

/*******************************************************************/

    @GetMapping ("/updateClientURL")
    public String updateClientMethod (@RequestParam ("clientID") int Id, Model theModel){ /**/

        // Obtener el cliente del id que le pasamos

        Client theClient = daoClient.getOneClientById (Id);

        // Establecer el cliente como attributo del modelo

        theModel.addAttribute("clientUpdatedAttribute", theClient);

        // enviar al formulario

        return "updateClientFile";
    }

/*******************************************************************/

    @RequestMapping("/deleteClientURL")
    public String deleteClientMethod (@RequestParam("clientID") int id){

        daoClient.deleteClientById (id);

        return "redirect:/garageHomeURL/clientListURL";
    }


/*******************************************************************/

    @RequestMapping("/searchClientURL")
    public String searchClientMethod (HttpServletRequest request, Model theModel){

        return "searchClientFile";
    }

/*******************************************************************/

//
//String output = "displayClientInformation";
//
//    /*
//        em la pagina obtenemos:  <input type="text" name="plateToSearch"> este parametro plateToSearch
//        es el string que nesesitamos...
//     */
//    int plate = Integer.parseInt(request.getParameter("plateToSearch"));
//
//    // buscamos el runner
//    Client oneClient = oneClient = daoClient.getClientByPlate(plate);
//        if (oneClient == null)
//            return "noClientFoundFile";
//
//        theModel.addAttribute("Attributes", oneClient);
//
//        return output;
}
