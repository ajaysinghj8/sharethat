class CreateBlogComments < ActiveRecord::Migration
  def up
    create_table :blog_comments do |t|
      t.text    :comment, :null => false
      t.boolean :mark_read, :default => false
      t.boolean :visible, :default => true 
      t.timestamps
    end
  end

  def down
  	drop_table :blog_comments
  end
end


=begin
	
CREATE  TABLE IF NOT EXISTS `blog`.`blog_comment` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `post_id` INT NOT NULL ,
  `is_reply_to_id` INT NOT NULL DEFAULT 0 ,
  `comment` TEXT NOT NULL ,
  `user_id` INT NOT NULL ,
  `mark_read` TINYINT(1)  NULL DEFAULT 0 ,
  `enabled` TINYINT(1)  NOT NULL DEFAULT 1 ,
  `date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`id`, `user_id`) ,
  INDEX `fk_comment_1` (`post_id` ASC) ,
  INDEX `fk_comment_2` (`user_id` ASC) ,
  CONSTRAINT `fk_comment_1`
    FOREIGN KEY (`post_id` )
    REFERENCES `blog`.`blog_post` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_2`
    FOREIGN KEY (`user_id` )
    REFERENCES `blog`.`blog_user` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

=end