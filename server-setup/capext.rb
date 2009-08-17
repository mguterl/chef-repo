set :virtual_machines_dir, '/cygdrive/c/Virtual Machines/'
set :virtual_machines, ["debian1", "debian2", "debian3"]

set :user, "atomes"
set :vmrun, "'/cygdrive/c/Program Files (x86)/VMware/VMWare Server/vmrun.exe' -T server -h https://localhost:8333/sdk -u atomes -p cesium "


role :vmserver, "manip15g.spectro.jussieu.fr"


namespace :vmware do

  def target_path dir
    :virtual_machines_dir+dir+"/Debian 5.0 Lenny Server/"
  end

  def vmpath name
    " \"[standard] #{name}/Debian 5.0 Lenny Server/Debian 5.0 Lenny Server.vmx\" "
  end

  desc "Reinitialize vmware disks"
  task :reset, :roles => :vmserver do
    clean_image = "/cygdrive/c/Virtual Machines/Debian 5.0 Lenny Server.vmdk"
    virtual_machines.each do |vm|
      path = target_path vm
      run "cp \"#{clean_image}\" \"#{path}\""
    end
  end

  def vmcmd (command, name, shell_cmd = '')
    fetch(:vmrun)+command+vmpath(name)+shell_cmd
  end

  desc "Stop all virtual machines"
  task :stop_all, :roles => :vmserver do
    virtual_machines.each do |vm|
      run vmcmd('stop', vm)
    end
  end

  desc "Start all virtual machines"
  task :start_all, :roles => :vmserver do
    virtual_machines.each do |vm|
      run vmcmd('start', vm)
    end
  end

  desc "Stop one virtual machines"
  task :stop, :roles => :vmserver do
    vm = fetch(:vm)
    run vmcmd('stop', vm)
  end

  desc "Start one virtual machines"
  task :start, :roles => :vmserver do
    vm = fetch(:vm)
    run vmcmd('start', vm)
  end

  desc "Run program in vm"
  task :base_install, :roles => :vmserver do
    vm = fetch(:vm)
    cmd_line = '/usr/bin/apt-get update && /usr/bin/apt-get install -y ssh openssh-server && ping -c3 sidney.spectro.jussieu.fr'
    run vmcmd('-gu root -gp user runProgramInGuest', vm, cmd_line)
  end

end


#pur.spectro.jussieu.fr (134.157.7.201)
#tchao.spectro.jussieu.fr (134.157.7.205) 00:50:56:00:00:00 [ether] 
#dhcp-221.lkb.upmc.fr (134.157.7.221) at 00:50:56:00:00:01 [ether] 
#dhcp-223.lkb.upmc.fr (134.157.7.223) 223 00:50:56:00:00:02 [ether] 
