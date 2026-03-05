package com.CSC340.CRUD_API_Practice;

import java.util.Collection;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/characters")
public class CharacterApiController {
    
    private final CharacterService CHARACTERSERVICE;

    public CharacterApiController(CharacterService service) {
        this.CHARACTERSERVICE = service;
    }

    /**
     * Endpoint to retrieve all characters
     * 
     * @return ResponseEntity containing a collection off all characters
     */
    @GetMapping("/")
    public ResponseEntity<Collection<Character>> getAllCharacters() {
        return ResponseEntity.ok(CHARACTERSERVICE.getAllCharacters());
    }


    /**
     * Endpoint to retrieve characters through search
     * 
     * @param name The name to search for, provided as request parameter
     *             parameter is optional
     * @return ResponseEntity containing a collection of all characters matching name
     *         or all names if search parameter is null
     */
    @GetMapping("/search")
    public ResponseEntity<Collection<Character>> searchCharacterByName(@RequestParam(required = false) String name) {
        List<Character> characters;
        if(name != null) {
            characters = CHARACTERSERVICE.getCharcterByName(name);
        } else {
            characters = CHARACTERSERVICE.getAllCharacters();
        }

        return ResponseEntity.ok(characters);
    }

    /**
     * Endpoint to retrieve character by ID
     * 
     * @param id The ID of the character to be found
     * @return ResponseEntity containing Character if found
     *         or 404 error if not found
     */
    @GetMapping("/{id}")
    public ResponseEntity<Character> getCharacterById(@PathVariable Long id) {
        Character character = CHARACTERSERVICE.getCharacterById(id);
        if(character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    /**
     * Endpoint to retieve characters by occupation
     * 
     * @param occupation The occupation to be found
     * @return ResponseEntity containing a collection of characters with searched occupation
     */
    @GetMapping("/occupation/{occupation}")
    public ResponseEntity<Collection<Character>> getCharacterByJob(@PathVariable String occupation) {
        return ResponseEntity.ok(CHARACTERSERVICE.getCharactersByOccupation(occupation));
    }

    /**
     * Endpoint to create a new character
     * 
     * @param character The character object trying to be created, provided in request body
     * @return ResponseEntitiy containing Character created
     *         or 404 error if creation fails
     */
    @PostMapping("/")
    public ResponseEntity<Character> createCharacter(@RequestBody Character character) {
        Character newCharacter = CHARACTERSERVICE.createCharacter(character);
        if(newCharacter != null) {
            return ResponseEntity.ok(newCharacter);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    /**
     * Endpoint to update a character
     * 
     * @param id The ID of the character trying to be updated
     * @param character Updated character object, provided in the request body
     * @return ResponseEntity containing updated character object
     *         or 404 Not Found error if update fails
     */
    @PutMapping("/{id}")
    public ResponseEntity<Character> updateCharacter(@PathVariable Long id, @RequestBody Character character) {
        Character updatedCharacter = CHARACTERSERVICE.updateCharacter(id, character);
        if(updatedCharacter != null) {
            return ResponseEntity.ok(updatedCharacter);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    /**
     * Endpoint to delete character by ID
     * 
     * @param id The ID of the character trying to be deleted
     * @return ResponseEntity with no content if delete is succesful
     *         404 Error if no character found
     */
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable Long id) {
        CHARACTERSERVICE.deleteCharacter(id);
        return ResponseEntity.noContent().build();
    }

}
