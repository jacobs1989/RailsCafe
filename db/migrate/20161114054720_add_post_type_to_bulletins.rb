class AddPostTypeToBulletins < ActiveRecord::Migration[5.0]
  def change
    add_column :bulletins, :post_type, :string, default: 'bulletin'
  end
end
