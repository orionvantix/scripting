# files="ls new_folder/Session4Control_Structures_Flow/test_folder"?
source_dir="/Users/sunatullo/scripting/new_folder/test_folder"
target_dir="/Users/sunatullo/scripting/new_folder"
# mkdir new_folder
for item in "$source_dir"/*; do
  # Skip if there are no files
  [ -e "$item" ] || continue
  
  # Move each file/folder to the target
  mv "$item" "$target_dir"
done