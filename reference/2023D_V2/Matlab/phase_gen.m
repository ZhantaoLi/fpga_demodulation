fs = 6e6;  % sample freq 6MHz
N = 4096;
t = 0: 1/fs: N/fs - 1/fs;

% complex envelop of 2FSK signal
Rc = 10e3;
Nc = fs/Rc;
h = 5;

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

com = exp(1i*phase);
phase_hop = angle(com);

phase_q = round((2^31 - 1) * phase_hop / pi);
phase_q = phase_q + 2^31;
plot(phase_q)

fid = fopen('COE/phase.coe', 'w');
fprintf(fid, 'memory_initialization_radix=10;\n');
fprintf(fid, 'memory_initialization_vector=\n');
fprintf(fid, '%d,\n', phase_q);
fclose(fid);