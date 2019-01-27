function summa = f_sum_numerically(zetas_k,a_k,B_k,w,D_0)
% function summa = sa_sum_numerically(m,xps,precision,zeta_k,a_k,B_k,c_exp);
%
% Returns infinite sum, see Lasic 2009 and function sa_D_w. 

w = w * 2 * pi; %Convert to radians
for i=1:numel(w)
    summa(i) = sum(bsxfun(@rdivide,bsxfun(@times, a_k(:), B_k(:)) *w(i)^2,...
               bsxfun(@power, a_k(:), 2 )*D_0^2+w(i)^2));
end