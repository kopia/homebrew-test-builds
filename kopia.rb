# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20211105.0.121940"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.121940/kopia-20211105.0.121940-macOS-x64.tar.gz"
    sha256 "121500ba28bb18936511c4487913069a972afda4ac2accfcf8ff31d816d77ee3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.121940/kopia-20211105.0.121940-macOS-arm64.tar.gz"
    sha256 "29feed9128520f6b504065b2b2dd0e68c9319eaf9a24cd61c7440fc840193606"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.121940/kopia-20211105.0.121940-linux-x64.tar.gz"
    sha256 "e0c37030a7b4c57638a0f422d2f12a1d43844ccaecb9c043e33e4ba5ef86f47e"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.121940/kopia-20211105.0.121940-linux-arm.tar.gz"
    sha256 "7dd97bb26c7def5243d9181b20c28d21717078f612c8d5736b556643d5022f82"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20211105.0.121940/kopia-20211105.0.121940-linux-arm64.tar.gz"
    sha256 "bb7ac49ac0230371776e1fc4b7c353aa6f29f342bc716667353e13dedde9bab8"
  end

  def install
    bin.install "kopia"
  end
end
