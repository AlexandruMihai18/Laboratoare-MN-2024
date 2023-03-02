function [] = file_usage()
  fid = fopen('instructiuni.m', 'r');
  
  while 1
    line = fgetl(fid);
  
    if ischar(line)
      printf("%s\n", line);
    else
      break;
    endif
    
  endwhile
  
  stare = fseek(fid, 0, 'eof');
  pozitie = ftell(fid);
  
  printf("Dimensiunea fisierului este: %d bytes\n", pozitie);
  
  fclose(fid);
endfunction