package com.DCCC.action.member.program;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DCCC.ProgramSearchCriteria;
import com.DCCC.action.Action;
import com.DCCC.dto.ProgramVO;
import com.DCCC.service.ProgramService;
import com.DCCC.view.JSONViewResolver;

public class ProgramSearchListAction implements Action {
	private ProgramService programService;

	public ProgramService getProgramService() {
		return programService;
	}

	public void setProgramService(ProgramService programService) {
		this.programService = programService;
	}

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String url=null;
		
		String searchType=request.getParameter("searchType");
		String keyword=request.getParameter("keyword");
		
		
		String prg_day="";
		String prg_kind="";
		String prg_time="";
		
		
		
		
		
		if(searchType==null||searchType.isEmpty()||searchType=="")searchType="";
		if(keyword==null||keyword.isEmpty()||keyword=="")keyword="";
		
		if(searchType.equals("d")) {
			prg_day=keyword;
		}
		if(searchType.equals("s")) {
			prg_kind=keyword;
		}
		if(searchType.equals("t")) {
			prg_time=keyword;
		}
		
		
		
		if(searchType.equals("ds") || searchType.equals("dt")) {
			if(searchType.equals("ds")) {
				String[] keywordArr=keyword.split("/");
//				System.out.println(keywordArr[0]);
//				System.out.println(keywordArr[1]);
				prg_day=keywordArr[0];
				prg_kind=keywordArr[1];
			}else {
				String[] keywordArr=keyword.split("/");
				prg_day=keywordArr[0];
				prg_time=keywordArr[1];
			}
		}else if(searchType.equals("st")) {
			String[] keywordArr=keyword.split("/");
			prg_kind=keywordArr[0];
			prg_time=keywordArr[1];
		}else if(searchType.equals("dst")) {
			String[] keywordArr=keyword.split("/");
			prg_day=keywordArr[0];
			prg_kind=keywordArr[1];
			prg_time=keywordArr[2];
		}
		
		if(prg_day==null)prg_day="";
		if(prg_kind==null)prg_kind="";
		if(prg_time==null)prg_time="";
		
		
		ProgramSearchCriteria cri= new ProgramSearchCriteria();
		cri.setSearchType(searchType);
		cri.setPrg_day(prg_day);
		cri.setPrg_time(prg_time);
		cri.setPrg_kind(prg_kind);
		
		
		
		Map<String, Object>dataMap=new HashMap<String,Object>();
		
		List<ProgramVO>programList=programService.getProgramList(cri);
		
		dataMap.put("programList",programList);
		
		JSONViewResolver.view(response, dataMap);
		
		
		
		return url;
	}
	
	
}
