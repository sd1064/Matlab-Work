function [iterations, weights] = myperceptron(input_matrix, output_class, max_iterations)

eta = 0.1;

N = size(input_matrix,2); % number of columsn = data points
V = size(input_matrix,1); % number of rows = input variables

inputs_and_bias = [ ones(1,N) ; input_matrix ];
weights = rand( V+1, 1 ); 
all_correct = false; 
calculated_class = zeros( 1, N );
iterations = 0;

while (all_correct == false) && (iterations < max_iterations)
    
    iterations = iterations + 1;
    all_correct = true;
    
    %% INSERT YOUR CODE HERE TO CALCULATE THE CLASS FOR ALL OBSERVATIONS
    % This is the calculation of class for every observation (column) 
    % given the current weights. Remember calculated_class is a vector with
    % one element for each observation.
	
	classified=dot(weights,inputs_and_bias);
    
    calculated_class; % calculate it from input_matrix and weights

    % compare calculated class and desired class for every observation   
    if any(calculated_class ~= output_class) % if any don't match...
        all_correct = false; % set the flag to false 
    end

    % If the flag is false (some observation is classified incorrectly), 
    % adjust the weights
    if all_correct == false

        %% INSERT YOUR CODE HERE TO ADJUST THE WEIGHTS        
        % You need to modify the weights based on the misclassified data
        % Most straightforward is to look at each point sequentially,
        % checking whether it is misclassified. if it is, adjust the
        % weights

        % if the data point is misclassified, calculate a weight
        % change from the input data, the desired output class and
        % the learning rate if you are using one explicitly.
        
    end
end
