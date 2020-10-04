% Record sound of my voice

%recVoice = audiorecorder(44100, 16, 2);
%get(recVoice)

% Record your voice for 5 seconds.
%recVoice = audiorecorder;
%disp('Now!!!')
%recordblocking(recVoice, 2);
%disp('It is over');

% Play back the recording.
%play(recVoice);

% Store data in double-precision array.
%myRecording = getaudiodata(recVoice);

% Plot the waveform.
%plot(myRecording);
%% a)

load Please.mat % Please identify yourself.

%load Thankyou.mat % Thank you for holding.

please = audioplayer(data, fs)
playblocking(please)

%% b)

L = length(data);

window = L/24;
noverlap = 0;
nfft = L*5;

spectrogram(data(:,1), 'yaxis', window, noverlap, nfft, fs);
title('"Please identify yourself."')
ylim([0,0.8])

%% c)
n = -5:1:6615;

kron_delta = @(n) double(n==0);

h = @(n) kron_delta(n) + 0.5*kron_delta(n - 6615);

stem(n, h(n))
xlabel('n'); 
ylabel('h');
title('Impulse response');

%% e)
a = zeros(1,6615);
a(1,1) = 1;

b = zeros(1,6615);
b(1,1) = 1;
b(1,6615) = 1/2;

echo_data = filter(b,a,data);

echo_please = audioplayer(echo_data, fs)
playblocking(echo_please)

%% f)

n = 0:1:L;

h = @(n) (1/2).^(n) .* heaviside(n*6615);

stem(n, h(n))
xlabel('n'); 
ylabel('h');
title('Impulse response');
xlim([0 10])


%% h)
a = zeros(1,6615);
a(1,1) = 1;
a(1,6615) = -1/2;

b = zeros(1,6615);
b(1,1) = 1;

reverb_data = filter(b,a,data);

reverb_please = audioplayer(reverb_data, fs)
playblocking(reverb_please)

%%
shift1 = 500;

FFTdata = fft(data);
copydata1 = zeros(size(FFTdata));

copydata1(1+shift1:end) = FFTdata(1:end-shift1);
N1 = length(FFTdata(1:end-shift1));
copydata1(1:shift1) = FFTdata(N1+1:end);

pitchdata1 = ifft(copydata1);

please = audioplayer(data, fs)
pitchplease1 = audioplayer(pitchdata1, fs)

playblocking(please)
playblocking(pitchplease1)