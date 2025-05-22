close all

fs = 1.8e6;  % sample freq 6MHz
N = 4096;
t = 0: 1/fs: N/fs - 1/fs;

% complex envelop of AM signal
% fa = 5e3;
% m_t = cos(2*pi*fa*t);
% ma = 0.5;
% 
% delta_phi = pi/5;       % phase error
% delta_f = 100;
% I_am = (1+ma*m_t);
% Q_am = (1+ma*m_t);
% I_am = round(511 * I_am / max(abs(I_am)) );
% Q_am = round(511 * Q_am / max(abs(Q_am)) );
% I_am = round(I_am .* cos(delta_phi + 2*pi*delta_f*t));
% Q_am = round(-Q_am .* sin(delta_phi + 2*pi*delta_f*t));
% A = sqrt(I_am.^2 + Q_am.^2);
% theta = angle(I_am + 1i * Q_am);
% I = I_am + 512;
% Q = Q_am + 512;



% complex envelop of FM signal
fa = 1e3;
m_t = cos(2*pi*fa*t);

mf = 5;
Kf = mf * fa;     % 最大频偏25kHz

phase = zeros(1,N);     % FM产生的相位变化
for i = 1:N
    if i == 1
        phase(i) = 0;
    else
        phase(i) = phase(i-1) + 2*pi*Kf*m_t(i-1)/fs;      % delta_phi = delta_f * delta_t
    end
end

delta_phi = pi/3;       % phase error
I_FM = cos(phase - delta_phi);
I_FM = round(I_FM * 511);

Q_FM = sin(phase - delta_phi);
Q_FM = round(Q_FM * 511);

A = sqrt(I_FM.^2 + Q_FM.^2);
theta = angle(I_FM + 1i * Q_FM);
I = I_FM + 512;
Q = Q_FM + 512;

% complex envelop of FM calibrate signal
% c_t = ones(1,N);
% 
% Kf = 1e3;     % 最大频偏25kHz
% 
% phase = zeros(1,N);     % FM产生的相位变化
% for i = 1:N
%     if i == 1
%         phase(i) = 0;
%     else
%         phase(i) = phase(i-1) + 2*pi*Kf*c_t(i-1)/fs;      % delta_phi = delta_f * delta_t
%     end
% end
% 
% delta_phi = pi/5;       % phase error
% I_FM = cos(phase - delta_phi);
% I_FM = round(I_FM * 511);
% 
% Q_FM = sin(phase - delta_phi);
% Q_FM = round(Q_FM * 511);
% 
% A = sqrt(I_FM.^2 + Q_FM.^2);
% theta = angle(I_FM + 1i * Q_FM);
% I = I_FM + 512;
% Q = Q_FM + 512;

% fid = fopen('COE/FM_I.coe', 'w');
% fprintf(fid, 'memory_initialization_radix=10;\n');
% fprintf(fid, 'memory_initialization_vector=\n');
% fprintf(fid, '%d,\n', I);
% fclose(fid);
% fid = fopen('COE/FM_Q.coe', 'w');
% fprintf(fid, 'memory_initialization_radix=10;\n');
% fprintf(fid, 'memory_initialization_vector=\n');
% fprintf(fid, '%d,\n', Q);
% fclose(fid);

subplot(4,1,1)
plot(t,I_FM)
subplot(4,1,2)
plot(t,Q_FM)
subplot(4,1,3)
plot(t,A)
subplot(4,1,4)
plot(t, phase)

figure()
plot(t,I)
hold on
plot(t,Q)