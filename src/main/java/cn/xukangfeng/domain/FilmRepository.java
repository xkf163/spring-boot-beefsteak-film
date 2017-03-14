package cn.xukangfeng.domain;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


/**
 * Created by F on 2017/3/12.
 */
public interface FilmRepository extends JpaRepository<Film , Integer> {

    Page<Film> findByYear(Short year, Pageable pageable);

    List<Film> findByYear(Short year);

    List<Film> findFilmDistinctByYearIsNotNull();

    @Query(value = "Select DISTINCT(f.year)  From Film f")
    List<Short> findYearDistinct();

}
