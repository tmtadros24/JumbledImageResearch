function save_images(initial_directory, new_directory)
	directory = strcat(initial_directory, '\*.jpg');
	imagefiles = dir(directory);      
	blocksizes = [8, 16, 32, 64, 128];
	nfiles = length(imagefiles);    % Number of files found
	for i=1:nfiles
   		currentfilename = imagefiles(i).name;
   		currentimage = imread(currentfilename);
   		filename_pieces = strsplit(currentfilename, '.');
   		for j=1:length(blocksizes)
   			[new, original] = scramble( currentimage, 1, blocksizes(j), 0, 1);
   			write_dir = strcat(new_directory, filename_pieces{1}, '_', num2str(blocksizes(j)), 'scrambledpixelBlocksWithGrid.jpg');
   			imwrite(new, write_dir);
   			write_dir = strcat(new_directory, filename_pieces{1}, '_', num2str(blocksizes(j)), 'pixelsOriginalWithGrid.jpg');
   			imwrite(original, write_dir);
   		end
	end
end