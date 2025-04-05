M0 = [
    1 4 3 100 12 1000 25 32 500 700 20 9000 25 650 40 3 67 ...
    2 305 80 200 50 2 15 4
];
M1 = [
    1 6 2 120 14 900 25 35 550 650 23 7500 25 700 43 6 72 8 ...
    360 70 220 60 1 14 8
];
M2 = [
    1.5 5 7 150 13 550 1 40 520 600 27 5500 27 900 44 12 75 ...
    9 360 50 190 50 4 13 6
];
M3 = [
    122 120 120 170 140 700 100.5 134 570 600 125 6100 125 ...
    1050 122 130 187 109 460 145 330 160 105 113 104
];
M4 = [
    25 25 30 40 50 600 6 33 500 600 26 5500 26 1150 14 32 ...
    126 8 360 28 230 60 2 13 5
];

M_all = [M0; M1; M2; M3; M4]

hkeeping = M_all(:,25)

mean_hkeeping = mean(hkeeping)

diff_hkeeping = hkeeping - mean_hkeeping

corr_M_all = bsxfun(@minus, M_all, diff_hkeeping(:))

colmeans = mean(corr_M_all, 1)
colmins  = min(corr_M_all, [], 1)

norm_M_all = bsxfun(
    @rdivide,
    bsxfun(@minus, corr_M_all, colmins),
    colmeans
)

adj_M_all = bsxfun(@plus, norm_M_all, 1 - norm_M_all(1,:))

fig = figure(1)

for col = 1:size(adj_M_all, 2)
    
    this_gene = adj_M_all(:,col)
    
 
    color = (this_gene(5) > 1.3) * 'r' + ...
            (this_gene(5) <  .7) * 'b' + ...
            and(this_gene(5) >= .7, this_gene(5) <= 1.3) * 'g';
    
    plot(this_gene, char(color), 'linewidth', 1);
    % first point is 0h
    xticklabels(linspace(0, 4, 5))
    set(gca, 'FontSize', 21)
    hold on;
    
end

title('Time courses of individual genes')
xlabel('Time post infection [h]')
ylabel('Normalized mRNA level [0h = 1.0]')

print(fig, 'timecourses.pdf')