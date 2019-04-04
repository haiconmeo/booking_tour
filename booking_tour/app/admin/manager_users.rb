ActiveAdmin.register User do
  # Strong parameters trong Rails
  # cho phép Rails controllers nhận giá trị truyền từ views
  # Cho các thuộc tính được khai báo dưới đây
  permit_params :idUser, :Username, :Password, :Name

  index do
    selectable_column
    id_column
    column :idUser
    column :Username
    column :Password
    column :Name
    
    actions
  end

  # Cho phép admin search theo các thuộc tính này tại trang index
  filter :Username
  
  # Các thuộc tính sẽ được hiển thị để Admin nhập giá trị
  form do |f|
    f.inputs "Product Details" do
      f.input :idUser
      f.input :Username
      f.input :Password
      f.input :Name
      
    end
    f.actions
  end

end