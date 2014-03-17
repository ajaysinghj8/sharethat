class CreateBlogAuthors < ActiveRecord::Migration
  def up
    create_table :blog_authors do |t|
      t.string :display_name, :limit => 45, :null =>false
      t.string :first_name,   :limit => 45
      t.string :last_name,    :limit => 45 
      t.timestamps
    end
  end
  def down
  	drop_table :blog_authors
  end
end

=begin
	
CREATE  TABLE IF NOT EXISTS `blog`.`blog_author` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `display_name` VARCHAR(45) NOT NULL ,
  `first_name` VARCHAR(45) NULL ,
  `last_name` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `display_name_UNIQUE` (`display_name` ASC) )
ENGINE = InnoDB;

	
=end