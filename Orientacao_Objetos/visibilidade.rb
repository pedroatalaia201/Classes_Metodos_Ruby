#public- pode acessar de todo lugar;
#private- pode acessar apenas do mesmo objeto;
#protected- pode chamar de outro obj, desde que pertença a mesma hierearquia de classe;

class MyClass
    def m1
        puts "Step 1"
        m2()
        m3()
    end

    #private
    # tudo o que abaixo agora é private:
    private def m2
        puts "Step 2"
    end

    private def m3
        puts "Step 3"
    end

    protected   #não funciona em line;
    def m5
        puts "Step 5"
    end
end

class MySubClass < MyClass
    def m4
        m3()
        puts "Step 4"
        other_obj = MyClass.new()
        other_obj.m5()
        #caso o metódo m5() fosse privado não seria possível acessar-lo;
    end
end


obj = MySubClass.new()
obj.m4()