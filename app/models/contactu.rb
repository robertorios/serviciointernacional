class Contactu < ActiveRecord::Base
def self.salvar(data)

 Pony.mail({
    :to => 'jeanarios@gmail.com',
    :via => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => 'probertorios@gmail.com',
      :password             => 'peru2010',
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    },
    :subject => 'hi',
    :body => 'Comment received at ' + Time.now.to_s + ' by ' + data['name'] + ' with phone number / email : ' + data['email'] + ' / ' + data['phone'] + ' says: ' + data['value'] 
  })

end
end
