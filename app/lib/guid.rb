class Guid
  def self.gcreate useLong=false
    if useLong
      # FIXME: how random are these, should double-check
      epoch_mirco = Time.now.to_f
      epoch_full = Time.now.to_i
      epoch_fraction = epoch_mirco - epoch_full
      timeUnitA = epoch_fraction #.to_s
      timeUnitB = epoch_full #.to_s

      hexA = (timeUnitA * 1000000).to_i.to_s(16)
      hexB = timeUnitB.to_s(16)

      guid = ''
      guid += hexA
      guid += getRandomString(3)
      guid += '-'
      guid += getRandomString(4)
      guid += '-'
      guid += getRandomString(4)
      guid += '-'
      guid += getRandomString(4)
      guid += '-'
      guid += hexB
      guid += getRandomString(6)
    else
      #airline code style
      guid = getRandomAlphaNumString(6).downcase
    end
  end

  protected

  def self.getRandomString slength
    str = ''
    slength.times do
      str += rand(0..15).to_s(16)
    end
    str
  end

  def self.getRandomAlphaNumString slength
        basestr = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".split("").shuffle.join
        rstr = ""
        slength.times do 
          rstr += basestr[rand(0..basestr.length-1)].chr
        end
        rstr
  end

end
