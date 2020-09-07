function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters~

K = [100,15];

e = s_des(1) - s(1); % Calculate error
e_dot = s_des(2) - s(2);
%s_2dot = (u_last/params.mass) - params.gravity;
%s_2dot = s_des/t;
u = params.mass*(K(1,1)*e + K(1,2)*e_dot + params.gravity);


% FILL IN YOUR CODE HERE


end

