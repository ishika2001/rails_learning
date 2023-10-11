class User < ApplicationRecord
  validates :lastname, length:{minimum:5}
  # before_validation :normalize_lastname, on: [ :create, :update ]
  before_save :save_value_before
  after_save :save_value_after
  before_validation :ensure_login_has_a_value
  after_validation :get_login_value
  before_create :before_creation 
  after_create :after_creation
  after_initialize :after_initialization
  before_update :before_updation 
  after_update :after_updation
  after_touch :after_touching
  after_rollback
  
  # has_many :accounts
 
  def get_login_value
    puts "after validation"
    # puts ".......#{self.login}"
  end

  def ensure_login_has_a_value
    puts "before validation"
    if login.nil?
      self.login = email unless email.blank?
    end
  end 

  def save_value_before
    puts "Inside before save.................."
  end

  def save_value_after
    puts "Inside after save.................."
  end

  def before_creation 
    puts "Before creation"
  end

  def after_creation 
    puts "After creation"
  end

  def before_updation
    puts "before update"
  end

  def after_updation
    puts "after update"
  end
  
    def normalize_lastname
      self.lastname = lastname.downcase.titleize
    end

     def after_initialization
      puts "after initialize"
    end
  
    after_find do |user|
      puts "after find" 
    end

    def after_touching
        puts "You have touched an object"
    end

   

     before_destroy do |user|
      puts "before_destroy"
    end

     after_destroy do |user|
      puts "after_destroy"
    end

     after_commit  do |user|
      puts "after_commit"
    end

     after_rollback do |user|
      puts "after_rollback"
    end

end

