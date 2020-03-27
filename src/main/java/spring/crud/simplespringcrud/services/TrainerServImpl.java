package spring.crud.simplespringcrud.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import spring.crud.simplespringcrud.models.Trainer;
import spring.crud.simplespringcrud.repos.TrainerRepo;

import java.util.List;

@Service
@Transactional
public class TrainerServImpl implements TrainerServ<Trainer> {

    @Autowired
    TrainerRepo TrRepo;

    @Override
    public List<Trainer> getAll() {
        return TrRepo.findAll();
    }

    @Override
    public void create(Trainer tr) {
        TrRepo.save(tr);
    }

    @Override
    public void update(Trainer tr) {
        TrRepo.save(tr);
    }

    @Override
    public void delete(Trainer tr) {
        TrRepo.delete(tr);
    }

    @Override
    public Trainer getObject(int id) {
        return TrRepo.getOne(id);
    }

    @Override
    public Trainer getObject(String[] attrs) {
        return TrRepo.findTrainerByFirstNameAndLastNameAndSubject(attrs[0], attrs[1], attrs[2]);
    }


}


