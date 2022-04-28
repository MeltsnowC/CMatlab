function SL_BLOCKLIBS = chengeSL_BLOCKLIBS(Action)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
% 1表示sqrt()开根操作
% 2表示power（i，2）平方操作
% 3表示sigmoid操作
global cfg_param;
cfg_param(1) = ch_updateparam(Action(1),cfg_param(1));
cfg_param(2) = ch_updateparam(Action(2),cfg_param(2));
cfg_param(3) = ch_updateparam(Action(3),cfg_param(3));
cfg_param(4) = ch_updateparam(Action(4),cfg_param(4));
cfg_param(5) = ch_updateparam(Action(5),cfg_param(5));
cfg_param(6) = ch_updateparam(Action(6),cfg_param(6));
cfg_param(7) = ch_updateparam(Action(7),cfg_param(7));

SL_BLOCKLIBS = {
           struct('name', 'Discrete', 'is_blk', false, 'num', cfg_param(1))
%             struct('name', 'Continuous', 'is_blk', false,  'num', 0.2)
             struct('name', 'Math Operations', 'is_blk', false,  'num', cfg_param(2))
%             struct('name', 'Logic and Bit Operations', 'is_blk', false,  'num', 0.2)
            struct('name', 'Sinks', 'is_blk', false, 'num', cfg_param(3))
            struct('name', 'Sources', 'is_blk', false, 'num', cfg_param(4))
            struct('name', 'simulink/Sources/Constant', 'is_blk', true, 'num', cfg_param(5))
            struct('name', 'simulink/Ports & Subsystems/Subsystem', 'is_blk', true, 'num', cfg_param(6))
           struct('name', 'simulink/Ports & Subsystems/If', 'is_blk', true, 'num', cfg_param(7))
         %   struct('name', 'simulink/Ports & Subsystems/Model', 'is_blk', true, 'num', 0.05)
        };
end

