# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20230312.0.202347"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.202347/kopia-20230312.0.202347-macOS-x64.tar.gz"
    sha256 "f4543827a2c2d10b83285d356ecb6bbf63b9bc67894af7069f468d4b2e661823"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.202347/kopia-20230312.0.202347-macOS-arm64.tar.gz"
    sha256 "35fe4b2f5b7e19e9dd637422ec97a682fd217c42429c8e661bf0db43fe0096cb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.202347/kopia-20230312.0.202347-linux-x64.tar.gz"
    sha256 "03bdc274ef6720396cc72ea8da84345ae7588458643dc9b326aedbb629ca060c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.202347/kopia-20230312.0.202347-linux-arm.tar.gz"
    sha256 "f963b7c65730e46a6f9018e1770b8310af28f7911f1c5e988c2c3e7958e3e6ff"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20230312.0.202347/kopia-20230312.0.202347-linux-arm64.tar.gz"
    sha256 "21deefd93e5db1aa69df2ef337bf234a1e0dede7827b0aa84e04ef80f51b93a9"
  end

  def install
    bin.install "kopia"
  end
end
