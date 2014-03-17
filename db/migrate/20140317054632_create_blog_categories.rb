class CreateBlogCategories < ActiveRecord::Migration
  def up
    create_table :blog_categories do |t|
      t.string :name, :limit => 45, :null => false
      t.string :name_clean, :limit => 45, :null => false
      t.boolean :enabled, :default => true
      t.integer :count_value, :default => 0
      t.timestamps
    end
  end

  def down
  	drop_table :blog_categories
  end
end

=begin
	
CREATE  TABLE IF NOT EXISTS `blog`.`blog_category` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `name_clean` VARCHAR(45) NULL ,
  `enabled` TINYINT(1)  NOT NULL DEFAULT 1 ,
  `date_created` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `index2` (`name_clean` ASC) )
ENGINE = InnoDB;

	
=end
