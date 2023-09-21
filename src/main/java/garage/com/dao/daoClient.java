package garage.com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import garage.com.controlador.entity.Client;

import java.util.List;

@Repository
public class daoClient implements DAO{

/*******************************************************************/

    @Autowired
    private SessionFactory sessionFactory;


/*******************************************************************/
    @Override
    @Transactional
    public List<Client> getClientList() {

        // obtenr sesion

        Session mySession = sessionFactory.getCurrentSession();

        // crear la consulta

        Query<Client> myQuery = mySession.createQuery("from Client", Client.class);

        // devolver la lista

        List<Client> clientList = myQuery.getResultList();

        return clientList;
    }

/*******************************************************************/

    @Override
    @Transactional
    public void insertOneNewClient(Client theClient) {

        // obtenr sesion

        Session mySession = sessionFactory.getCurrentSession();

        // insertar el cliente
        // save guarda el cliente, usamos otra sentencia que tambien actualiza
        //mySession.save(theClient);

        mySession.saveOrUpdate(theClient);

    }

/*******************************************************************/

    @Override
    @Transactional
    public Client getOneClientById(int id) {

        // obtenr sesion

        Session mySession = sessionFactory.getCurrentSession();

        // obtener la informacion del cliente

        Client theClient = mySession.get(Client.class, id);

        return theClient;
    }

/*******************************************************************/

/*******************************************************************/

/*******************************************************************/

/*******************************************************************/
}
