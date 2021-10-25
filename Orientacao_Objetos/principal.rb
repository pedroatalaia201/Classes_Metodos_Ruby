class Sensor
    def intall
        puts "Installing the sensor"
    end
    def boot
        puts "snesor start"
    end
    def colect_data
        puts "colecting data..."
    end
end

class SensorTemperature < Sensor
    def colect_data
        puts "colecting weather data...."
        super
        #após executar o código presente nessa classe
        #o "super" irá executar o código presente no 
        #metodo da classe mãe;
    end
end

sensor = SensorTemperature.new()

sensor.intall()
sensor.boot()
sensor.colect_data()