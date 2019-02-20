package com.dxc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dxc.dao.DownloadDAO;
import com.dxc.daoImp.DownloadInterface;
import com.dxc.entitty.FileEntity;
import com.dxc.entitty.UserEntity;

@Service
public class DownloadService implements DownloadInterface{
	@Autowired
	DownloadDAO downloadDao;
		
	public byte[] getDataById(int _id) {		
		return downloadDao.getDataById(_id);
	}

	public String getFileNameById(int _id) {		
		return downloadDao.getFileNameById(_id);
	}

	public FileEntity getFileById(int _id) {		
		return downloadDao.getFileById(_id);
	}

	public UserEntity getUserByUserId(int _id) {
		return downloadDao.getUserByUserId(_id);
	}

	public long getSizeFileById(int _id) {		
		return downloadDao.getSizeFileById(_id);
	}

	public void updateDownloadInformation(int _idFile, int _idUser) {		
		downloadDao.updateDownloadInformation(_idFile, _idUser);		
	}

	public void resetStorageDaily(int _id) {
		downloadDao.resetStorageDaily(_id);		
	}
	
	
}
