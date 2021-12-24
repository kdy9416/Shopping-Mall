package com.example.shopping.controller;



import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.shopping.paging.PageCreator;
import com.example.shopping.paging.PageVO;
import com.example.shopping.service.CategoryService;
import com.example.shopping.vo.CategoryVO;
import com.example.shopping.vo.GoodsVO;
import com.example.shopping.vo.SearchVO;



@Controller
public class CategoryController {

	@Autowired
	CategoryService service;
	
	@GetMapping("/")
	public String home() {
		
		return "Home/home";
		
	}
	
	@GetMapping("/goodsManage")
	public String product1() {
		return "ProductManagement/goodsManage";
		
	}
	
	@GetMapping("/categoryAdd")
	public String product2() {
		return "ProductManagement/categoryAdd";
		
	}
	
	
	@PostMapping("/categoryAdd2")
	public String product3(CategoryVO vo) {
		System.out.println(vo);
		service.insert(vo);
		return "ProductManagement/goodsManage";
		
	}
	
	
	@GetMapping("/category_list")
	public String product4(Model model, PageVO vo) {
		List<CategoryVO> list = service.list(vo);
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setTotalCount(service.countAllList());
		System.out.println(list);
		System.out.println("==============");
		model.addAttribute("listCategory",list);
		model.addAttribute("pc", pc);
		return "ProductManagement/category_list";
	}
	
	@GetMapping("/category_edit")
	public String product5(int cnum,Model model) {
		CategoryVO vo = service.select(cnum);
		model.addAttribute("getCategory",vo);
		return "ProductManagement/category_edit";
	}
	
	@PostMapping("/category_edit2")
	public String product6(CategoryVO vo) {
		service.update(vo);
		System.out.println(vo);
		return "redirect:/category_list";
	}
	
	@GetMapping("/category_delete")
	public String product7(int cnum) {
		service.delete(cnum);
		return "redirect:/category_list";
	}
	
	@GetMapping("/goodsInput")
	public String product8(Model model) {
		List<CategoryVO> allList = service.allList();
		if (allList == null && allList.size() == 0) {
			return "redirect:/";
		}
		model.addAttribute("listCategory",allList);
		return "ProductManagement/goodsInput";
	}
	
	@PostMapping("/goodsInput2")
	public String product9(HttpServletRequest req,GoodsVO vo, 
					BindingResult result) {
		if (result.hasErrors()) {
			vo.setPimage("");
		}
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
		MultipartFile file = mr.getFile("pimage");
		//File target = new File("c:\\Temp\\upload",file.getOriginalFilename());
		File target2 = new File("C:\\Users\\김동윤\\git\\repository2\\shopping\\src\\main\\resources\\static\\images",file.getOriginalFilename());
		if (file.getSize()>0) {
			try {
				//file.transferTo(target);
				file.transferTo(target2);
			}catch(IOException e) {}
		vo.setPimage(file.getOriginalFilename());
		}
		vo.setPcode(req.getParameter("category_fk") + vo.getPcode());
		service.insertGoods(vo);
		return "ProductManagement/goodsManage";
	}
	
	@GetMapping("/goodsList")
	public String product10(HttpServletRequest req , PageVO vo) {
		List<GoodsVO> list = service.goodsList(vo);
		PageCreator pc = new PageCreator();
		pc.setPaging(vo);
		pc.setTotalCount(service.countAllGoods());
		req.setAttribute("listProduct",list);
		req.setAttribute("pc", pc);
		return "ProductManagement/goods_list";
	}
	
	@GetMapping("/goodsUpdate")
	public String product11(int num , Model model) {
		GoodsVO vo = service.selectGoods(num);
		model.addAttribute("getProduct", vo);
		return "ProductManagement/goods_update";
	}
	
	
	
	@PostMapping("/goodsUpdate2")
	public String product12(HttpServletRequest req , GoodsVO vo,
							BindingResult result) {
		if (result.hasErrors()) {
			vo.setPimage("");
		}
		MultipartHttpServletRequest mr = (MultipartHttpServletRequest)req;
		MultipartFile file = mr.getFile("pimage");
		File target = new File("c:\\Temp\\upload", file.getOriginalFilename());
		if (file.getSize()>0) {
			try {
				file.transferTo(target);
				vo.setPimage(file.getOriginalFilename());
			}catch(IOException e) {
				e.printStackTrace();
			}
		}else {
			vo.setPimage(req.getParameter("pimage2"));
		}
		System.out.println(vo.getPimage());	
		service.updateGoods(vo);
		return "redirect:/goodsList";
	}
	
	@GetMapping("/goodsDelete")
	public String product13(int pnum,String pimage) {
		service.deleteGoods(pnum);
		File file = new File("c:\\Temp\\upload",pimage);
		file.delete();
		return "redirect:/goodsList";
	}
	
	@PostMapping("/goodsSearch")
	public String prod_find(HttpServletRequest req, SearchVO vo , PageVO vo2) {
		System.out.println(vo);
		PageCreator pc = new PageCreator();
		pc.setPaging(vo2);
		pc.setTotalCount(service.countAllGoods());
		List<GoodsVO> list = null;
		if (vo.getCondition().equals("all")) {
			list = service.goodsList(vo2);
			req.setAttribute("pc", pc);
		}else {
			if (vo.getCondition().equals("cate")) {
				vo.setCondition("pcode");
				list = service.findCategoryGoods(vo);
			}else {
				vo.setCondition("pname");
				list = service.findNameGoods(vo);
			}
		}
		req.setAttribute("listProduct", list);
		return "ProductManagement/goods_list";
	}
}
