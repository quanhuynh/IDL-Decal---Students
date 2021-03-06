PRO error1 ;prints a list of floats from 1 to 9
   x = findgen(10)
   FOR i = 0, (n_elements(x) - 1) DO BEGIN
       print, x[i]
   ENDFOR
END


PRO error2 ;says hi
   print, "hello"
END

PRO error3 ;informs you of the value of 3 divided by 2
   print, '3 divided by 2 is ' + '3/2'
END

PRO error4 ;creates an array z out of arrays x and y
   x = ['1','2','3']
   y = ['a','b', 'c']
   z = [x, y]
END


PRO error5 ;creates a 1000X1000 array, fills it with 0's, takes any element whose coordinates are, summed, less than 90 and changes them to the sin of the sum of the coordinates, then looks at every element that isn't equal to 0 and changes it to 5
  a = fltarr(1000,1000)
  s = size(a)
  FOR i = 0, s[1] - 1 DO BEGIN
     FOR j = 0, s[2] - 1 DO BEGIN 
        IF i+j LT 90 THEN BEGIN
           a[i,j] = sin(i+j)
        ENDIF
     ENDFOR
  ENDFOR
  FOR i=0, s[1] - 1 DO BEGIN
     FOR j=0, s[2] - 1 DO BEGIN
        IF a[i, j] NE 0 THEN BEGIN
           a[i,j] = 5
        ENDIF
     ENDFOR
  ENDFOR
END
