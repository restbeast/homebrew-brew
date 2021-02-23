class Restbeast < Formula
  desc "A command line API client, an API testing tool and an easy load testing tool"
  homepage "https://restbeast.com"
  url "https://github.com/restbeast/restbeast/archive/v1.0.0.tar.gz"
  sha256 "86ce87f0cf14178131aad34a65508b33509729282e61d0f944594e26aea63ddd"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "make", "VERSION=v1.0.0"
    bin.install "restbeast"
  end

  test do
    system "false"
  end
end
