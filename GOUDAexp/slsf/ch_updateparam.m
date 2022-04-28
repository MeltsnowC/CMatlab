function newparam = ch_updateparam(action_i,param)
% 1表示sqrt()开根操作
% 2表示power（i，2）平方操作
% 3表示sigmoid操作
    switch action_i
        case 1
            newparam = sqrt(param);
        case 2
            newparam = power(param,2);
        case 3
            newparam = ch_sigmoid(param);
    end
end