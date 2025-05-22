close all

fs = 6e6;  % sample freq 6MHz
N = 4096;
t = 0: 1/fs: N/fs - 1/fs;

% complex envelop of 2FSK signal
Rc = 10e3;
Nc = fs/Rc;
h = 2;

delta_f = h*Rc/2;

for i = 1:N
    m_nrz(i) = (-1)^(floor(i/Nc));
end

phase = zeros(1,N);     % 2FSK产生的相位变化
for i = 1:N
    if i == 1
        phase(i) = 0;
    else
        phase(i) = phase(i-1) + 2*pi*delta_f*m_nrz(i-1)/fs;      % delta_phi = delta_f * delta_t
    end
end

delta_phi = pi/4;       % phase error
I_FSK = cos(phase - delta_phi);
I_FSK = round(I_FSK * 511);

Q_FSK = sin(phase - delta_phi);
Q_FSK = round(Q_FSK * 511);

A = sqrt(I_FSK.^2 + Q_FSK.^2);
theta = angle(I_FSK + 1i * Q_FSK);
I = I_FSK + 512;
Q = Q_FSK + 512;


% complex envelop of 2PSK signal
% Rc = 10e3;
% Nc = fs/Rc;
% 
% for i = 1:N
%     m_nrz(i) = (-1)^(floor(i/Nc));
% end
% 
% delta_phi = pi/6;       % phase error
% I_PSK = m_nrz*cos(delta_phi);
% I_PSK = round(I_PSK * 511);
% 
% Q_PSK = -m_nrz*sin(delta_phi);
% Q_PSK = round(Q_PSK * 511);
% 
% A = sqrt(I_PSK.^2 + Q_PSK.^2);
% theta = angle(I_PSK + 1i * Q_PSK);
% I = I_PSK + 512;
% Q = Q_PSK + 512;

% fid = fopen('COE/2PSK_I.coe', 'w');
% fprintf(fid, 'memory_initialization_radix=10;\n');
% fprintf(fid, 'memory_initialization_vector=\n');
% fprintf(fid, '%d,\n', I);
% fclose(fid);
% fid = fopen('COE/2PSK_Q.coe', 'w');
% fprintf(fid, 'memory_initialization_radix=10;\n');
% fprintf(fid, 'memory_initialization_vector=\n');
% fprintf(fid, '%d,\n', Q);
% fclose(fid);

subplot(4,1,1)
plot(t,I_FSK)
subplot(4,1,2)
plot(t,Q_FSK)
subplot(4,1,3)
plot(t,A)
subplot(4,1,4)
plot(t, phase)