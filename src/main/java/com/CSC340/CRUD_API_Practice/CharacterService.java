package com.CSC340.CRUD_API_Practice;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CharacterService {
    
    private final CharacterRepository CHARACTERREPOSITORY;

    public CharacterService(CharacterRepository repository) {
        this.CHARACTERREPOSITORY = repository;
    }

    public List<Character> getAllCharacters() {
        return CHARACTERREPOSITORY.findAll();
    }

    public Character createCharacter(Character character) {
        return CHARACTERREPOSITORY.save(character);
    }

    public Character getCharacterById(Long id) {
        return CHARACTERREPOSITORY.findById(id).orElse(null);
    }

    public Character updateCharacter(Long id, Character updatedCharacter) {
        return CHARACTERREPOSITORY.findById(id)
            .map(character -> {
                character.setName(updatedCharacter.getName());
                character.setDescription(updatedCharacter.getDescription());
                character.setAddress(updatedCharacter.getAddress());
                character.setOccupation(updatedCharacter.getOccupation());
                return CHARACTERREPOSITORY.save(character);
            })
            .orElse(null);
    }

    public void deleteCharacter(Long id) {
        CHARACTERREPOSITORY.deleteById(id);
    }

    public List<Character> getCharactersByOccupation(String occupation) {
        return CHARACTERREPOSITORY.findByOccupation(occupation);
    }

    public List<Character> getCharcterByName(String name) {
        return CHARACTERREPOSITORY.findByName(name);
    }

    public List<Character> getCharacterByAddress(String address) {
        return CHARACTERREPOSITORY.findByAddress(address);
    }
}
