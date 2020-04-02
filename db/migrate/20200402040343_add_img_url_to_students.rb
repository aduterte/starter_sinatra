     class AddImgUrlToStudents < ActiveRecord::Migration[5.2]
       def change
          add_column :students, :img_url, :string, default: "https://avatars.githubusercontent.com/u/59492509"
       end
     end
