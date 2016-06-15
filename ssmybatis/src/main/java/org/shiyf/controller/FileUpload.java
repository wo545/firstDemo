package org.shiyf.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/upload")
public class FileUpload {
	@RequestMapping(value="/uploadfile",method=RequestMethod.POST)
	public String uploadFile(@RequestParam("")MultipartFile file){
		System.out.println("文件开始上传！--------------------------------");
		String fileName=file.getName();
		String fileName1=file.getOriginalFilename();
		System.out.println("file.getName()--"+fileName);
		System.out.println("file.getOriginalFilename()--"+fileName1);
		Long size=file.getSize();
		System.out.println("file.getSize()--"+size);
		System.out.println("file is Empty?---"+file.isEmpty());
		System.out.println("file.getContentType()--"+file.getContentType());
		File localFile=new File("E:/upload/"+fileName1);
		if(!localFile.exists()){
			localFile.mkdirs();
		}
		try {
			file.transferTo(localFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "Success";
	}
	public static void main(String[] args) {
		File file=new File("E:\\Up");
		System.out.println(file.exists());
		System.out.println(file.isFile());
		System.out.println(file.isDirectory());
		System.out.println(file.mkdirs());
		System.out.println(file.exists());
		System.out.println(file.isFile());
		System.out.println(file.isDirectory());
	}
}
