        if(cnt>10)
        m =1000000;
        for i = -5:5
            for j = -5:5
                if(i~=0 || j~=0)
                    if(map(x+i,y+j,1)-map(x,y,1) <= m )
                        m = map(x+i,y+j,1)-map(x,y,1);
                        temp0=x+i;
                        temp1=y+j;
                    end
                end
            end
        end
        x = round(temp0);
        y = round(temp1);
        cnt = 0;
        continue;
    end