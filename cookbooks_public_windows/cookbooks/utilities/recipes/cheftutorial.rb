# Cookbook Name:: utilities
# Recipe:: Chef Tutorial
powershell "Chef Tutorial" do
parameters({'MYNAME' => @node[:utilities][:MYNAME]})
  powershell_script = <<'POWERSHELL_SCRIPT'
  echo "Hello World! My name is $env:MYNAME" > c:\cheftutorial.txt
POWERSHELL_SCRIPT
  source(powershell_script)
end
