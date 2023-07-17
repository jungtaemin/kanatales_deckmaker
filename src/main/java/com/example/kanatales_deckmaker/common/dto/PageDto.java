package com.example.kanatales_deckmaker.common.dto;

import com.example.kanatales_deckmaker.card.domain.Card;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PageDto<T> {
    /** 범용성있는 page정보 생성 dto **/


    private int page;
    private int maxPage;

    private int startPage;
    private int endPage;

    private List<T> pageData;

    private int pageLimit = 5;
    private int blockLimit = 5;

    public PageDto<T> startPageAndPageLimit(int page){
         this.page = (page-1) * pageLimit;
         return this;
    }

    // @Param 전체count+page(범용성있게 쓰려고 만듬)
    public PageDto<T> ofPageParam(int page, int boardCount, List<T> cardList){
        this.page = page;
        // 전체 페이지 갯수 계산(10/3=3.33333 => 4)
        this.maxPage = (int) (Math.ceil((double) boardCount / pageLimit));
        // 시작 페이지 값 계산(1, 4, 7, 10, ~~~~)
        this.startPage = (((int)(Math.ceil((double) page / blockLimit))) - 1) * blockLimit + 1;
        // 끝 페이지 값 계산(3, 6, 9, 12, ~~~~)
        this.endPage = startPage + blockLimit - 1;
        if (this.endPage > this.maxPage) {
            this.endPage = this.maxPage;
        }
        this.pageData = cardList;
        return this;
    }
}
