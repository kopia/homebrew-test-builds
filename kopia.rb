# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20210323.0.80128"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.80128/kopia-20210323.0.80128-macOS-x64.tar.gz"
    sha256 "006d38bbdf931e01b4e74f85bc31b2138342470703515e45d03d084b06eaee1d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.80128/kopia-20210323.0.80128-macOS-arm64.tar.gz"
    sha256 "a5afb2319ad781af43f442958d019c197067d6e276f81692d86d8020de0f21c7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.80128/kopia-20210323.0.80128-linux-x64.tar.gz"
    sha256 "02b189563a69bcde79ee6c41040c1f2a550c49a470e408145c4a1fa37071fe13"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.80128/kopia-20210323.0.80128-linux-arm.tar.gz"
    sha256 "90e12542f635b1cfb0c32b3deeabfb2ade2b30ff3fb42b9ac10e487a19a5bbda"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20210323.0.80128/kopia-20210323.0.80128-linux-arm64.tar.gz"
    sha256 "bbf60d469b9286003844993d02d79f00a76564e05aba8ce48428c3cfa4b81b14"
  end

  def install
    bin.install "kopia"
  end
end
