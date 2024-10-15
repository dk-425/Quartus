file ?=

out:  $(file).c
        aarch64-linux-gnu-gcc $(file).c -o $(file)
        touch $(file).out.done

scp: $(file).out.done
         scp $(file) root@192.168.166.13:/root
         echo "$(file) transferred successfully"
         touch $(file).scp.done

exec: $(file).scp.done
        ssh root@192.168.166.13 './$(file)'

all: out scp exec

clean: 
        rm $(file) *.done


