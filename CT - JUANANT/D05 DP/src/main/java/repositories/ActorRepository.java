package repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import security.UserAccount;
import domain.Actor;


public interface ActorRepository extends JpaRepository<Actor, Integer>{
	@Query("select a1 from Actor a1 where a1.userAccount = ?1")
	public Actor getActor(UserAccount ua);

	

}
