package com.CSC340.CRUD_API_Practice;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "characters")
public class Character {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long characterId;

    @Column(nullable = false)
    private String characterName;

    @Column(nullable = false)
    private String description;

    @Column(nullable = true)
    private String address;

    @Column(nullable = true)
    private String occupation;

    public Character() {
    }

    public Character(String name, String description, String address, String occupation) {
        this.characterName = name;
        this.description = description;
        this.address = address;
        this.occupation = occupation;
    }

    public Character(long Id, String name, String description, String address, String occupation) {
        this.characterId = Id;
        this.characterName = name;
        this.description = description;
        this.address = address;
        this.occupation = occupation;
    }

    public long getCharacterId() {
        return characterId;
    }
    
    public void setCharacterId(long id) {
        this.characterId = id;
    }

    public String getCharacterName() {
        return characterName;
    }

    public void setCharacterName(String name) {
        this.characterName = name;
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

}
