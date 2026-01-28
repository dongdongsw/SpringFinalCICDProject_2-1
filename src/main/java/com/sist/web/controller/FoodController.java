package com.sist.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sist.web.service.FoodService;
import com.sist.web.vo.FoodVO;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class FoodController {

	private final FoodService fService;
	
	@GetMapping("/")
	public String food_list(@RequestParam(value="page",defaultValue = "1") String page,Model model) {
		
		int curpage = Integer.parseInt(page);
		int rowSize = 12;
		int start = (curpage - 1) * rowSize;
		List<FoodVO> list = fService.foodListData(start);
		int totalpage = fService.foodTotalPage();
		
		final int BLOCK = 10;
		int startPage = ((curpage-1)/BLOCK*BLOCK) + 1;
		int endPage = ((curpage-1)/BLOCK*BLOCK) + BLOCK;
		
		if(endPage > totalpage) {
			endPage = totalpage;
		}
		model.addAttribute("list",list);
		model.addAttribute("curpage",curpage);
		model.addAttribute("startPage",startPage);
		model.addAttribute("endPage",endPage);
		model.addAttribute("totalpage",totalpage);
		
		return "list";
	}
	
	@GetMapping("/detail")
	public String food_detail(@RequestParam("fno") int fno, Model model) {
		
		FoodVO vo = fService.foodDetailData(fno);
		
		model.addAttribute("vo",vo);
		return "detail";
	}
	
	@GetMapping("/find")
	public String food_find(Model model) {
		
		return "main/main";
	}
	// detail => pinia : 지도 / 댓글 => 로그인 처리
//	@GetMapping("/detail_vue")
//	public String food_detail_vue(@RequestParam("fno") int fno, Model model) {
//		
//		return "main/main";
//	}
}
