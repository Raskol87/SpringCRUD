package spring.crud.simplespringcrud.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import spring.crud.simplespringcrud.models.Trainer;

public interface TrainerRepo extends JpaRepository<Trainer, Integer> {

    Trainer findTrainerByFirstNameAndLastNameAndSubject(String firstName, String lastName, String subject);


}
