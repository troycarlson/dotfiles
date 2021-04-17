switch (machine_name)
  case 'workstation'
    if command -v xmodmap > /dev/null 2>&1
      xmodmap ~/.xmodmap
    end

    if command -v xcape > /dev/null 2>&1
      xcape -e 'Control_L=Escape' -t 150
    end
end
