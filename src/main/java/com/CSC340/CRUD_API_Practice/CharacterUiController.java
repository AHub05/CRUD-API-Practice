package com.CSC340.CRUD_API_Practice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/characters")
public class CharacterUiController {

    @Autowired
    private CharacterService characterService;

    @GetMapping("/about")
    public String about() {
        return "about";
    }

    @GetMapping({"", "/"})
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        return "character-list";
    }

    @GetMapping("/{characterId}")
    public String getCharacterById(@PathVariable long characterId, Model model) {
        Character character = characterService.getCharacterById(characterId);
        model.addAttribute("character", character);
        if (character != null) {
            return "character-details";
        } else {
            return "about";
        }
    }

    @GetMapping("/add")
    public String showForm() {
        return "new-character-form";
    }

    @PostMapping("/")
    public String createCharacter(Character character, MultipartFile picture) {
        Character newCharacter = characterService.createCharacter(character);
        if(newCharacter != null) {
            characterService.saveProfilePicture(newCharacter, picture);
            return "redirect:/characters/" + newCharacter.getCharacterId();
        } else {
            return "redirect:/characters/add?error=true";
        }
    }

    @PostMapping("/update/{id}")
    public String updateCharacter(@PathVariable Long id, Character updatedCharacter, MultipartFile picture) {
        Character character = characterService.updateCharacter(id, updatedCharacter);
        if (character != null) {
            characterService.saveProfilePicture(character, picture);
            return "redirect:/characters/" + character.getCharacterId();
        } else {
            return "redirect:/characters/update" + id + "?error=true";
        }
    }

    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters/";
    }

}
