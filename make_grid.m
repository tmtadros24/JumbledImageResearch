% Function to put a black grid over an image where the size of each square in the grid is specified by blocksize
function[image] = make_grid( im, blocksize )
	image = im;
	image(blocksize:blocksize:end, :, :) = 0;
	image(:, blocksize:blocksize:end, :) = 0;
end	