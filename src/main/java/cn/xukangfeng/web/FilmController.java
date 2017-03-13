package cn.xukangfeng.web;

import cn.xukangfeng.domain.Film;
import cn.xukangfeng.domain.FilmRepository;
import cn.xukangfeng.system.EasyUIPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by F on 2017/3/12.
 */
@RestController
public class FilmController {

    @Autowired
    private FilmRepository filmRepository;

    @GetMapping(value = "/films")
    public List<Film> getfilmList(){
        return filmRepository.findAll();
    }

    @PostMapping(value = "/films")
    public List<Film> postfilmList(){
        return filmRepository.findAll();
    }

//    @PageableDefault(value = 1 ,sort = {"fid"},direction = Sort.Direction.DESC) Pageable pageable
    @PostMapping(value = "/fs")
    public Page<Film> getFilmByPageable(EasyUIPage easyUIPage, @RequestParam(value = "page" ,defaultValue = "0",required = false) Integer page
                                            , @RequestParam(value = "size" ,defaultValue = "20",required = false) Integer size) {
        Sort sort = new Sort(Sort.Direction.DESC,"fid");
        Pageable pageable = new PageRequest(page,size,sort);
        return filmRepository.findAll(pageable);
    }

    @GetMapping(value = "/film/{id}")
    public Film getFilm(@PathVariable("id") Integer fid){
        return filmRepository.findOne(fid);
    }

    @GetMapping(value = "/film/year/{year}")
    public List<Film> getFilmsByYear(@PathVariable("year") Short year){
        return filmRepository.findByYear(year);
    }





}

