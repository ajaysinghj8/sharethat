class CreateBlogPosts < ActiveRecord::Migration
  def up
    create_table :blog_posts do |t|
      t.string :title, :limit =>144, :null => false
      t.text :article
      t.string :title_clean, :limit =>144
      t.string :file, :limit =>45
      t.string :banner_image, :limit =>144
      t.boolean :featured, :default => true
      t.boolean :enabled, :default => true
      t.boolean :comments_enabled, :default => true
      t.integer :views, :default =>0 
      t.timestamps
    end
  end

  def down
  	drop_table :blog_posts
  end
end

=begin
	-----------------------------------
CREATE  TABLE IF NOT EXISTS `blog`.`blog_post` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(144) NOT NULL ,
  `article` TEXT NULL ,
  `title_clean` VARCHAR(144) NULL ,
  `file` VARCHAR(45) NULL ,
  `author_id` INT NOT NULL ,
  `date_published` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `banner_image` VARCHAR(144) NULL ,
  `featured` TINYINT(1)  NOT NULL DEFAULT 0 ,
  `enabled` TINYINT(1)  NOT NULL DEFAULT 0 ,
  `comments_enabled` TINYINT(1)  NOT NULL DEFAULT 1 ,
  `views` INT NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_post_1` (`author_id` ASC) ,
  UNIQUE INDEX `index3` (`title_clean` ASC) ,
  CONSTRAINT `fk_post_1`
    FOREIGN KEY (`author_id` )
    REFERENCES `blog`.`blog_author` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
	
=end