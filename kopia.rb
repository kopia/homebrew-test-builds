# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20241025.0.1833"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241025.0.1833/kopia-20241025.0.1833-macOS-x64.tar.gz"
    sha256 "34cfdfdc1896b8298493a3d834d1d1858f998e5cd222dbf22aa378e5ff00a48e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241025.0.1833/kopia-20241025.0.1833-macOS-arm64.tar.gz"
    sha256 "0574d4104938b6b3788c61487afa257d9260b05732debae8d18786e5614b83fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241025.0.1833/kopia-20241025.0.1833-linux-x64.tar.gz"
    sha256 "265d69e0a3f18e33d45540f2b2ff611e157a98927bf9ed1d05b65fee7ea91315"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241025.0.1833/kopia-20241025.0.1833-linux-arm.tar.gz"
    sha256 "21c8472475268377596836e36b785b127935bd70123b8e296b292f2b9ff48422"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20241025.0.1833/kopia-20241025.0.1833-linux-arm64.tar.gz"
    sha256 "2bfd646da09126eace4ce40f597194884eb1cabfe9375a3ace687faf089e66c4"
  end

  def install
    bin.install "kopia"
  end
end
