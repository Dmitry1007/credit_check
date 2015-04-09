account_id = 79927398714

chared = account_id.to_s.chars

a = chared[0]
b = chared[1]
c = chared[2]
d = chared[3]
e = chared[4]
f = chared[5]
g = chared[6]
h = chared[7]
i = chared[8]
j = chared[9]
k = chared[10]

abstracted = [a, b, c, d, e, f, g, h, i, j, k]

multiplied = [a, (b.to_i*2).to_s, c, (d.to_i*2).to_s, e, (f.to_i*2).to_s, g, (h.to_i*2).to_s, i, (j.to_i*2).to_s, k]

l = multiplied[0]
m = multiplied[1]
n = multiplied[2]
o = multiplied[3]
p = multiplied[4]
q = multiplied[5]
r = multiplied[6]
s = multiplied[7]
t = multiplied[8]
u = multiplied[9]
v = multiplied[10]

result = []

if l.size > 1
  result << l.to_i-9
else
  result << l.to_i
end

if m.size > 1
  result << m.to_i-9
else
  result << m.to_i
end

if n.size > 1
  result << n.to_i-9
else
  result << n.to_i
end

if o.size > 1
  result << o.to_i-9
else
  result << o.to_i
end

if p.size > 1
  result << p.to_i-9
else
  result << p.to_i
end

if q.size > 1
  result << q.to_i-9
else
  result << q.to_i
end

if r.size > 1
  result << r.to_i-9
else
  result << r.to_i
end

if s.size > 1
  result << s.to_i-9
else
  result << s.to_i
end

if t.size > 1
  result << t.to_i-9
else
  result << t.to_i
end

if u.size > 1
  result << u.to_i-9
else
  result << u.to_i
end

if v.size > 1
  result << (v.to_i-9)
else
  result << v.to_i
end

summed = result[0] + result[1] + result[2] + result[3] + result[4] + result[5] + result[6] + result[7] + result[8] + result[9] + result[10]

if summed % 10 == 0 
  puts "VALID"
else
  puts "NOT VALID"
end
