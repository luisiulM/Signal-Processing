clear all

load CE3Notes.mat;

L = length(notes);

f1 = 392.2;
f2 = 440.7;
f3 = 349;
f4 = 174.8;
f5 = 261;

Bandpass_filter1 = designfilt('bandpassiir', 'FilterOrder', 10, 'HalfPowerFrequency1', (f1-2), 'HalfPowerFrequency2', (f1+2), 'SampleRate',fs);
Bandpass_filter2 = designfilt('bandpassiir', 'FilterOrder', 10, 'HalfPowerFrequency1', (f2-2), 'HalfPowerFrequency2', (f2+2), 'SampleRate',fs);
Bandpass_filter3 = designfilt('bandpassiir', 'FilterOrder', 10, 'HalfPowerFrequency1', (f3-2), 'HalfPowerFrequency2', (f3+2), 'SampleRate',fs);
Bandpass_filter4 = designfilt('bandpassiir', 'FilterOrder', 10, 'HalfPowerFrequency1', (f4-2), 'HalfPowerFrequency2', (f4+2), 'SampleRate',fs);
Bandpass_filter5 = designfilt('bandpassiir', 'FilterOrder', 10, 'HalfPowerFrequency1', (f5-2), 'HalfPowerFrequency2', (f5+2), 'SampleRate',fs);

%%

filtered_notes1 = filter(Bandpass_filter1, notes);
filtered_notes2 = filter(Bandpass_filter2, notes);
filtered_notes3 = filter(Bandpass_filter3, notes);
filtered_notes4 = filter(Bandpass_filter4, notes);
filtered_notes5 = filter(Bandpass_filter5, notes);

%%

subplot(5,1,1)  
plot(L, filtered_notes1)
axis off

subplot(5,1,2)
plot(L, filtered_notes2)
axis off

subplot(5,1,3)
plot(L, filtered_notes3)
axis off

subplot(5,1,4)
plot(L, filtered_notes4)
axis off

subplot(5,1,5)
plot(L, filtered_notes5)
axis off