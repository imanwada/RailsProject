class MyRedis

    @@data = Hash.new
    
    
    def my_set(key, value)
    @@data[key] = value
    end
    
    
    def my_get(key)
     return @@data[key]
    end
    
    def my_mset(*pairs)
     for i in pairs
       @@data[(i[0])]= i[1]
       end
    end
    
    def my_mget(keys)
     temp = Array.new
     for i in keys
       temp << my_get(i)
      end
     return temp
    
    end
    
    def my_del(keys)
    for i in keys
    @@data.delete(i)
    end
    end
    
    def my_exists(key)
     return @@data.has_key? key
    
    end
    
    def my_rename(key, new_key)
     if((my_exists(key) != true || my_exists(new_key))== true)
     return false
     else
     @@data[new_key]=@@data.delete(key)
     return true
    end
    end
    
    def backup
    file_backup = File.new("my_dump.rdb", "a")
    file_backup.puts @@data
    file_backup.close
    end
    
    def restore
      file = File.open("my_dump.rdb")
      restore_data = file.read
      file.close
      
    end
    
    end
    
    