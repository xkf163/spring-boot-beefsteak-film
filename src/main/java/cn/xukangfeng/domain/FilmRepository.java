package cn.xukangfeng.domain;

import org.hibernate.sql.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


/**
 * Created by F on 2017/3/12.
 */
public interface FilmRepository extends JpaRepository<Film , Integer> {

    List<Film>  findByYear(Short year);

//    @Query(value = "select * from Film f where f.name=name")
//    Film findFilm(@Param("name") String name);

    List<Film> findFilmDistinctByYearIsNotNull();

    @Query(value = "Select DISTINCT(f.year)  From Film f")
    List<Short> findYearDistinct();

}
