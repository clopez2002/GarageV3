package garage.com.dao;

import garage.com.controlador.entity.Client;

import java.util.List;

public interface DAO {

    public List<Client> getClientList ();

    void insertOneNewClient(Client theClient);

    Client getOneClientById(int id);

    void deleteClientById(int id);

    Client getClientByPlate(int plate);
}
