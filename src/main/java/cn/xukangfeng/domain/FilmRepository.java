package cn.xukangfeng.domain;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by F on 2017/3/12.
 */
public interface FilmRepository extends JpaRepository<Film , Integer> {

    List<Film>  findByYear(Short year);

//    @Query(value = "select * from Film f where f.name=name")
//    Film findFilm(@Param("name") String name);

}
