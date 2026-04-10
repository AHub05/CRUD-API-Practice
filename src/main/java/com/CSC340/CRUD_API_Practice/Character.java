package com.CSC340.CRUD_API_Practice;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "characters")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Character {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    @Column(nullable = true)
    private String address;

    @Column(nullable = true)
    private String occupation;

    private String profilePictureString;

    public Character(String name, String description, String address, String occupation) {
        this.name = name;
        this.description = description;
        this.address = address;
        this.occupation = occupation;
    }

    public Long getCharacterId() {
        return characterId;
    }
    
    public void setCharacterId(Long id) {
        this.characterId = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public void setProfilePicturePath(String path) {
        this.profilePictureString = path;
    }
    public String getProfilePicturePath() {
        return profilePictureString;
    }
}
