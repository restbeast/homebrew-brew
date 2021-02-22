class Restbeast < Formula
  desc "A command line API client, an API testing tool and an easy load testing tool"
  homepage "https://restbeast.com"
  url "https://github.com/restbeast/restbeast/archive/v1.0.0.tar.gz"
  sha256 "86ce87f0cf14178131aad34a65508b33509729282e61d0f944594e26aea63ddd"
  license "GPL-3.0"

  depends_on "go@1.16" => :build

  def install
    system "CI_COMMIT_TAG=v1.0.0", 
           "make"
    system "make",
           "install"
  end

  test do
    system "false"
  end
end
