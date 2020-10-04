clear all
% This saves the file CE3Notes.mat in the workplace
load CE3Notes.mat;
%

%% (a)

% Coverts the signal data in to sound and plays it with a given sample rate
% fs.
sound(notes, fs)
%
%%
%%%% b)

L = length(notes);

Ts = 1/fs; % s/samples

duration = Ts*L % sec

%%
%%%% c)

window = L/5;
noverlap = 0;
nfft = L*4;

spectrogram(notes, 'yaxis', window, noverlap, nfft, fs);
title('Spectrum of the discrete signal "notes"')
ylim([0.15 0.45]);

%%
%%%% f)

window = [L L/2 L/20 L/50];
noverlap = 200;
nfft = L*4;

subplot(2,2,1)
spectrogram(notes, 'yaxis', window(1), noverlap, nfft, fs);
title('window = L')
ylim([0.1 0.5])
 
subplot(2,2,2)
spectrogram(notes, 'yaxis', window(2), noverlap, nfft, fs);
title('window = L/2')
ylim([0.1 0.5])

subplot(2,2,3)
spectrogram(notes, 'yaxis', window(3), noverlap, nfft, fs);
title('window = L/20')
ylim([0.1 0.5])

subplot(2,2,4)
spectrogram(notes, 'yaxis', window(4), noverlap, nfft, fs);
title('window = L/50')
ylim([0.1 0.5])