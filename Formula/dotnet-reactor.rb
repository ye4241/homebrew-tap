class DotnetReactor < Formula
  desc ".NET obfuscation and protection tool"
  homepage "https://www.eziriz.com/"
  url "https://www.eziriz.com/download.php?download=dotnet_reactor_7_3_0_0_macos-x64.zip"
  version "7.3.0.0"
  sha256 "079d8c87b3ab6887215492dcab7fdd6529a21b63b8fcb9a0fd94079ccba3c87b"
  
  def install
    libexec.install Dir["*"]
    
    chmod "+x", libexec/"dotNET_Reactor"
    chmod "+x", libexec/"dotNET_Reactor.Console"
    
    system "xattr", "-cr", libexec
    
    bin.install_symlink libexec/"dotNET_Reactor"
    bin.install_symlink libexec/"dotNET_Reactor.Console"
  end
  
  test do
    assert_predicate bin/"dotNET_Reactor", :exist?
    assert_predicate bin/"dotNET_Reactor.Console", :exist?
  end
  
  def caveats
    <<~EOS
      dotNET Reactor has been installed with two commands:
        - dotNET_Reactor          (GUI version)
        - dotNET_Reactor.Console  (Console version)
    EOS
  end
end