function machine_name
  switch (hostname)
  case mac.attlocal.net mac16.local
    echo macbook
  case workstation
    echo workstation
  end
end
