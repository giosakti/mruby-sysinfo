module Sysinfo
  class Factory
    def self.create
      case OS.sysname
      when 'Linux'
        Linux.new
      else
        raise 'OS not supported yet.'
      end
    end
  end
end
