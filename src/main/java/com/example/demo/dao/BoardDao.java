package com.example.demo.dao;

import com.example.demo.domain.Board;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface BoardDao {
    List<Board> selectBoard();
    Board select(Board board);

    void insert(Board board);

    void delete(Board board);

    void update(Board board);
}
