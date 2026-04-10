package com.CSC340.CRUD_API_Practice;

import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CharacterService {

    private final CharacterRepository CHARACTERREPOSITORY;

    private static final String UPLOAD_DIR = "src/main/resources/static/profile-pictures/";

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

    public void saveProfilePicture(Character character, MultipartFile profilePicture) {
        if (profilePicture == null || profilePicture.isEmpty()) {
            return;// No picture uploaded, skip saving
        }
        String originalFileName = profilePicture.getOriginalFilename();
        try {
            if (originalFileName != null && originalFileName.contains(".")) {
                String fileExtension = originalFileName.substring(originalFileName.lastIndexOf(".") + 1);
                String fileName = String.valueOf(character.getCharacterId()) + "." + fileExtension;
                Path filePath = Paths.get(UPLOAD_DIR + fileName);

                InputStream inputStream = profilePicture.getInputStream();

                Files.createDirectories(Paths.get(UPLOAD_DIR));// Ensure directory exists
                Files.copy(inputStream, filePath,
                        StandardCopyOption.REPLACE_EXISTING);// Save picture file
                character.setProfilePicturePath(fileName);
                CHARACTERREPOSITORY.save(character);// Update student with picture path
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
