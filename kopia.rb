# typed: false
# frozen_string_literal: true

class Kopia < Formula
  desc "Fast and secure open source backup."
  homepage "https://kopia.io"
  version "20240401.0.151027"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.151027/kopia-20240401.0.151027-macOS-x64.tar.gz"
    sha256 "903fbe19b96b48bf797b0cb0e516e9cd43f20e4dcdf5e77e2f466575b910b6ad"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.151027/kopia-20240401.0.151027-macOS-arm64.tar.gz"
    sha256 "19c6472b951a1551e3769cc0566aa25ef0ad8a3c72af417325dfff2aa1a8f748"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.151027/kopia-20240401.0.151027-linux-x64.tar.gz"
    sha256 "177e4afa7c9b19ab9d800ff6ebb9e0bb26dc081e25e28a61af91e78899866628"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.151027/kopia-20240401.0.151027-linux-arm.tar.gz"
    sha256 "c82303c292ec2d2968db26ce075a78f4b38829b37a849ab6a505053c247dd809"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kopia/kopia-test-builds/releases/download/v20240401.0.151027/kopia-20240401.0.151027-linux-arm64.tar.gz"
    sha256 "88b9ebdaffa66fe13de023fbf5c66b96e0bb51dff9292542c1b33eb2bb8c4201"
  end

  def install
    bin.install "kopia"
  end
end
