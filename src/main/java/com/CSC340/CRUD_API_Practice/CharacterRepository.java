package com.CSC340.CRUD_API_Practice;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long>{
    
    List<Character> findByName(String name);

    @Query(value = "SELECT c.* FROM characters c WHERE c.occupation LIKE %?%", nativeQuery = true)
    List<Character> findByOccupation(String occupation);

    @Query(value = "SELECT c.* FROM characters c WHERE c.address LIKE %?%", nativeQuery = true)
    List<Character> findByAddress(String address);


}
