package spring.crud.simplespringcrud.models;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "Trainers")

public class Trainer implements Serializable {
    private int idTrainer;
    private String firstName;
    private String lastName;
    private String subject;
    private String tag;

    @Id
    @Column(name = "idTrainer", nullable = false)
    public int getIdTrainer() {
        return idTrainer;
    }

    public void setIdTrainer(int idTrainer) {
        this.idTrainer = idTrainer;
    }

    @Basic
    @Column(name = "firstName", nullable = false, length = 45)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "lastName", nullable = false, length = 45)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "subject", nullable = true, length = 45)
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Basic
    @Column(name = "tag", nullable = true, length = 45)
    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Trainer trainer = (Trainer) o;
        return idTrainer == trainer.idTrainer &&
                Objects.equals(firstName, trainer.firstName) &&
                Objects.equals(lastName, trainer.lastName) &&
                Objects.equals(subject, trainer.subject) &&
                Objects.equals(tag, trainer.tag);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idTrainer, firstName, lastName, subject, tag);
    }
}
