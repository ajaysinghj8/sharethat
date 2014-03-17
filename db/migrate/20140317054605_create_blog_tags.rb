class CreateBlogTags < ActiveRecord::Migration
  def up
    create_table :blog_tags do |t|
      t.string :tag,        :limit => 45, :null => false
      t.string :tag_clean,  :limit => 45, :null => false 
      t.timestamps
    end
    
  end

  def down
  	drop_table :blog_tags
  end
end


=begin
	
CREATE  TABLE IF NOT EXISTS `blog`.`blog_tag` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `post_id` INT NOT NULL ,
  `tag` VARCHAR(45) NOT NULL ,
  `tag_clean` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_tags_1` (`post_id` ASC) ,
  INDEX `index3` (`tag_clean` ASC) ,
  CONSTRAINT `fk_tags_1`
    FOREIGN KEY (`post_id` )
    REFERENCES `blog`.`blog_post` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

	
=end
