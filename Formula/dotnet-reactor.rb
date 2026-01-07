class DotnetReactor < Formula
  desc ".NET obfuscation and protection tool"
  homepage "https://www.eziriz.com/"
  url "https://www.eziriz.com/download.php?download=dotnet_reactor_7_5_0_0_macos-x64.zip"
  version "7.5.0.0"
  sha256 "12ce2e1a3fa761a24b21982a15a470947389081d48feb72e684f45e3523b13b0"

  def install
    libexec.install Dir["*"]
    chmod "+x", libexec/"dotNET_Reactor"
    chmod "+x", libexec/"dotNET_Reactor.Console"
    system "xattr", "-cr", libexec
    bin.install_symlink libexec/"dotNET_Reactor"
    bin.install_symlink libexec/"dotNET_Reactor.Console"
  end

  def caveats
    <<~EOS
      dotNET Reactor has been installed with two commands:
        - dotNET_Reactor          (GUI version)
        - dotNET_Reactor.Console  (Console version)
    EOS
  end

  test do
    assert_path_exists bin/"dotNET_Reactor"
    assert_path_exists bin/"dotNET_Reactor.Console"
  end
end
