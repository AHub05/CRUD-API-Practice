package com.CSC340.CRUD_API_Practice;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CharacterRepository extends JpaRepository<Character, Long>{
    
    List<Character> findByName(String name);

    @Query(value = "SELECT * FROM characters WHERE occupation LIKE %?%", nativeQuery = true)
    List<Character> findByOccupation(String occupation);

    @Query(value = "SELECT s.* FROM characters s WHERE s.address LIKE %?%", nativeQuery = true)
    List<Character> findByAddress(String address);


}
