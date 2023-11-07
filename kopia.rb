# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20231106.0.175505"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.175505/kopia-20231106.0.175505-macOS-x64.tar.gz"
    sha256 "b304ca54b612d2a94a3ba569fcdc91b2b9096cdb83842fae7ac56ba40ff25e3d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.175505/kopia-20231106.0.175505-macOS-arm64.tar.gz"
    sha256 "0eff692b4d0a52eba2c3cdb6911ee6e3fd2074b6c650e95837e69a010da3f020"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.175505/kopia-20231106.0.175505-linux-x64.tar.gz"
    sha256 "be716ecc0af5d5641e3f50155290cab9bb70816ea056fa98cf280b0afc9d98d5"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.175505/kopia-20231106.0.175505-linux-arm.tar.gz"
    sha256 "1fcd38b616e09e6342ab49565c736df4ffaa9b4868266a0d1d854847458646f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20231106.0.175505/kopia-20231106.0.175505-linux-arm64.tar.gz"
    sha256 "c4dfd84df4be5f2009db2baf75c60cfdddfd1da9852d1786608336a105c875b0"
  end

  def install
    bin.install "kopia"
  end
end
