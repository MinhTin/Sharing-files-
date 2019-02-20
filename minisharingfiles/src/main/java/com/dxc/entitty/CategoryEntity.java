package com.dxc.entitty;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import org.hibernate.search.annotations.Analyze;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Indexed;
import org.hibernate.search.annotations.Store;

@Indexed
@Entity(name="category")
public class CategoryEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int idCategory;
	 @Field(index=Index.YES, analyze=Analyze.YES, store=Store.NO)
	String nameCategory;
	String imageLinksCategory;
	
	
	@OneToMany(cascade=CascadeType.ALL, orphanRemoval=true)
	@JoinColumn(name="idFile")
	Set<FileEntity> idFile;
	
	
	
	public Set<FileEntity> getIdFile() {
		return idFile;
	}
	public void setIdFile(Set<FileEntity> idFile) {
		this.idFile = idFile;
	}
	public int getIdCategory() {
		return idCategory;
	}
	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}
	public String getNameCategory() {
		return nameCategory;
	}
	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}
	public String getImageLinksCategory() {
		return imageLinksCategory;
	}
	public void setImageLinksCategory(String imageLinksCategory) {
		this.imageLinksCategory = imageLinksCategory;
	}
	public CategoryEntity(int idCategory, String nameCategory,
			String imageLinksCategory, Set<FileEntity> idFile) {
		super();
		this.idCategory = idCategory;
		this.nameCategory = nameCategory;
		this.imageLinksCategory = imageLinksCategory;
		this.idFile = idFile;
	}
	public CategoryEntity() {
		super();
	}

	
	
	
	
	
}
