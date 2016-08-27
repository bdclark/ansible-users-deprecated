require 'spec_helper'

describe user 'bbaggins' do
  it { should exist }
  it { should have_home_directory '/home/bbaggins' }
  it { should have_login_shell '/bin/bash' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbYmAVC3HwwWmLgGe7/YIVS1EHoBeG70jKl8tNY8GCswrrEVS1cEViYCAhCMFhdc5MvH99CpQBVmy6w/77r1c2H7AyvjDkXGvoNlKO4+DiIwHYv+L2kC9fxE+N2uIuFOWhLcIVelxro0LKhVEKlDLQ0yafG/euFTsyg4DGGZtvrIN768NZFo0DWlf3lrbeT3JlKIZ5Qr1FNk2o4XIYRh4aAbNlCFSJSkbXYXcnibhGI8Keg8ShSB9ofNEyvoGE9Cstq8llHAZFJpbZOCxSea9ii+ua/pj4lkHItjtHweA6klMgI4Fzy57ni4tCl0Sjlmg5NkIROfit2q/dwwDwc3vx brian@ClarkBookPro.local' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7ezT4QbxReoas9bvsQcHTTTwrL29Hp7S+2HdeWnYpiz+NNvDCdCFAQmroLfGevuMLgdlsBIqzE+SqePXIvH8J37EGsGD472yORmN7n+DaO6FX0xZzkY4a9d5weFsz/fmIPq0SUgdx4SmGDmrP++EMU0WplLOHAac9d0NTTdJiUjWzBD0xt4Wt4+cjhJKoNGX7LCo0c/bdtbc3sk3ZFeDj/6CXrztU5ScmL5dBT1l8CUdFWV6bnXM5hOHIOnqRhAr7QhOrzKo+c4+TKnA66B2nrs+OrwucaaOpOGUsRgVifyeWowLhH/ns8fcRF5PFjOT5QfIeyR6WHgpvDJWnY8Cl brian@ClarkBookPro.local' }
  it { should belong_to_group 'users' }
end

describe user 'legolas' do
  it { should exist }
  it { should have_home_directory '/home/legolas' }
  it { should have_login_shell '/bin/bash' }
  it { should belong_to_group 'users' }
  it { should belong_to_primary_group 'elves' }
end

describe user 'strider' do
  it { should exist }
  it { should have_home_directory '/dev/null' }
  it { should have_login_shell '/bin/bash' }
  it { should belong_to_group 'users' }
  it { should belong_to_group 'admins' }
end

describe file '/home/strider' do
  it { should_not be_directory }
end

describe user 'gandalf' do
  it { should exist }
  it { should have_home_directory '/opt/gandalf' }
  it { should have_login_shell '/bin/false' }
  it { should_not belong_to_group 'users' }
  it { should belong_to_group 'admins' }
end

describe user 'saruman' do
  it { should_not exist }
end

describe user 'sauron' do
  it { should_not exist }
end

describe group 'elves' do
  it { should exist }
  it { should have_gid 777 }
end

describe group 'admins' do
  it { should exist }
  it { should have_gid 2300 }
end

describe group 'nonexist' do
  it { should_not exist }
end
