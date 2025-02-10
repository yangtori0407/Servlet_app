package com.yang.app;

public class ActionForward {
	//true면 forward, false: redirect
	private boolean flag;
	
	//forward일 경우 jsp의 경로, redirect시 url 경로 작성
	private String path;

	public boolean isFlag() {
		return flag;
	}

	public void setFlag(boolean flag) {
		this.flag = flag;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	
}
