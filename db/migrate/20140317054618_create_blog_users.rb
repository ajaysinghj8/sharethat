class CreateBlogUsers < ActiveRecord::Migration
  def up
    create_table :blog_users do |t|
      t.string  :name,    :limit => 45,  :null => false
      t.string  :email,   :limit => 45,  :null => false
      t.string  :website, :limit => 45,  :null => false
      t.boolean :enabled, :default => true
      t.timestamps
    end
  end

  def down
  	drop_table :blog_users
  end
end

=begin
	
CREATE  TABLE IF NOT EXISTS `blog`.`blog_user` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `website` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB;

	
=end