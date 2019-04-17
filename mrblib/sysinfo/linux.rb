module Sysinfo
  class Linux
    def mem_stats
      raw = ""

      if File.exists?('/proc/meminfo')
        File.foreach('/proc/meminfo') do |line|
          raw << line
        end
      end

      raw_lines = raw.split("\n").collect{ |x| x.strip }
      mem_total = raw_lines[0].gsub(/[^0-9]/, '').to_i
      mem_free = raw_lines[1].gsub(/[^0-9]/, '').to_i
      mem_available = raw_lines[2].gsub(/[^0-9]/, '').to_i

      {
        mem_total: mem_total,
        mem_free: mem_free,
        mem_available: mem_available,
        mem_used: mem_total - mem_available
      }
    end
  end
end
