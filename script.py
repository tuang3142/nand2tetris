# for i in range(16):
#     print(f'HalfAdder(a=a[{i}], b=c{i-1}, sum=out[{i}], carry=c{i});')

# for i in range(16):
#     print('Register(in=in, load=in{}, out=ram{});'.format(i, i))
#     print('Register(in=in, load=in{}, out=ram{});'.format(i, i))
#     print('Register(in=in, load=in{}, out=ram{});'.format(i, i))

for i in range(8):
    print(f'RAM8(in=in, load=in{i}, address=address[3..5], out=ram{i});')
