package com.example.demo.controller;

import com.example.demo.dao.BoardDao;
import com.example.demo.domain.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class BoardController {

    @Autowired
    private BoardDao boardDao;

    @GetMapping("/board")
    public String select(Model model) {
        model.addAttribute("result", boardDao.selectBoard());
        return "board";
    }

    @GetMapping("/board/{id}")
    public String show(@PathVariable Long id, Model model) {
        model.addAttribute("item", boardDao.select(new Board(id)));
        return "show";
    }

    @PostMapping("/board")
    public String write(
            @Valid @ModelAttribute("board") Board board,
            Model model) {
        boardDao.insert(board);
        model.addAttribute("result", boardDao.selectBoard());
        return "board";
    }

    @PutMapping("/board")
    public String update(
            @Valid @ModelAttribute("board") Board board,
            Model model) {
        boardDao.update(board);
        return "redirect:/board/" + board.getId();
    }

    @DeleteMapping("/board")
    public String delete(
            @Valid @ModelAttribute("board") Board board,
            Model model) {
        boardDao.delete(board);
        //model.addAttribute("result", boardDao.selectBoard());
        return "redirect:/board";
    }
}
