package spring.crud.simplespringcrud.services;

import java.util.List;

public interface TrainerServ<T> {

    List<T> getAll();

    void create(T obj);

    void update(T obj);

    void delete(T obj);


    T getObject(int id);

    T getObject(String[] attributes);


}
