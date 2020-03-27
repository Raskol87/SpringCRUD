package spring.crud.simplespringcrud.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import spring.crud.simplespringcrud.models.Trainer;
import spring.crud.simplespringcrud.services.TrainerServImpl;

@Controller
public class TrainerController {

    @Autowired
    TrainerServImpl trainerServ;

    @GetMapping("/")
    public String index(ModelMap mm) {
        return "index";
    }

    @GetMapping("/view")
    public String view(ModelMap mm) {
        mm.addAttribute("ListOfTrainers", trainerServ.getAll());
        return "viewTrainers";
    }

    @GetMapping("/create")
    public String getCreate(ModelMap mm) {
        mm.addAttribute("newTrainer", new Trainer());
        return "createTrainer";
    }

    @PostMapping("/create")
    public String postCreate(@ModelAttribute("newTrainer") Trainer trainer, ModelMap mm) {
        trainer.setTag("I am a KIK SpringBoot");
        trainerServ.create(trainer);
        mm.addAttribute("createdTrainer", trainer);
        return "successCreate";
    }


    @GetMapping({"/delete", "/update"})
    public String getModify(ModelMap mm) {
        mm.addAttribute("ListOfTrainers", trainerServ.getAll()); //.toArray(new Trainer[trainerServ.getAll().size()])
        return "modifyTrainers";
    }

    @PostMapping("/delete")
    public String postDelete(@ModelAttribute("trainerId") String id, ModelMap mm) {
        Integer tr_id = Integer.parseInt(id);
        Trainer del_tr = trainerServ.getObject(tr_id);
        trainerServ.delete(del_tr);
        mm.addAttribute("deletedTrainer", del_tr);
        return "successDelete";
    }

    @PostMapping("/update_success")
    public String postUpdate(@ModelAttribute("updateTrainer") Trainer up_tr, ModelMap mm) {
        up_tr.setTag("Here updated a KIK SpringBoot");
        System.out.println(up_tr.getIdTrainer());
        trainerServ.update(up_tr);
        mm.addAttribute("updatedTrainer", up_tr);
        return "successUpdate";
    }

    @PostMapping("/update_trainer")
    public String postUpdate(@ModelAttribute("trainerId") String id, ModelMap mm) {
        Integer tr_id = Integer.parseInt(id);
        Trainer up_tr = trainerServ.getObject(tr_id);
        mm.addAttribute("updateTrainer", up_tr);
        return "updateTrainer";
    }
}
