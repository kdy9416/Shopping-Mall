package com.example.shopping.paging;

//페이지 클래스
public class PageVO {

	private int page;
	private int countPerPage;
	
	public PageVO() {
		this.page = 1;
		this.countPerPage = 4;
	}
	
	public int getStartPage() {
		return (page-1) * countPerPage;
	}
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	
	
}
