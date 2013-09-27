# Keyboard Key on octupress
# rcmdnk (https://github.com/rcmdnk/keyboardkey)

module Jekyll
  class KeyboardKey < Liquid::Tag
    def initialize(name, markup, tokens)
      arr = markup.split(" ")
      @key = nil
      @classes = ""
      if arr.size > 0
        if arr.size == 1
          @key = arr[0]
        else
          if arr[0] == 'symbol'
            @key = arr[1]
            i=2
            if arr[1].casecmp('apple') == 0
              @key = '&#xf8ff;'
            elsif arr[1].casecmp('cmd') == 0 or arr[1].casecmp('command') == 0
              @key = '&#x2318;'
            elsif arr[1].casecmp('opt') == 0 or arr[1].casecmp('option') == 0
              @key = '&#x2325;'
            elsif arr[1].casecmp('shift') == 0
              @key = '&#x21e7;'
            elsif arr[1].casecmp('ctr') == 0 or arr[1].casecmp('ctrl') == 0 or arr[1].casecmp('control') == 0
              @key = '&#x2303;'
            elsif arr[1].casecmp('tab') == 0
              @key = '&#x21e5;'
            elsif arr[1].casecmp('esc') == 0
              @key = '&#x238b;'
            elsif arr[1].casecmp('bs') == 0 or arr[1].casecmp('backspace') == 0
              @key = '&#x232b;'
            elsif arr[1].casecmp('return') == 0 or arr[1].casecmp('enter') == 0
              @key = '&#x23ce;'
            elsif arr[1].casecmp('delete') == 0
              @key = '&#x2326;'
            elsif arr[1].casecmp('clear') == 0
              @key = '&#x2327;'
            elsif arr[1].casecmp('eject') == 0
              @key = '&#x23cf;'
            elsif arr[1].casecmp('capslock') == 0
              @key = '&#x21ea;'
            elsif arr[1].casecmp('pageup') == 0
              @key = '&#x21de;'
            elsif arr[1].casecmp('pagedown') == 0
              @key = '&#x21df;'
            elsif arr[1].casecmp('home') == 0
              @key = '&#x2196;'
            elsif arr[1].casecmp('end') == 0
              @key = '&#x2198;'
            elsif arr[1].casecmp('left') == 0
              @key = '&#x21e0;'
            elsif arr[1].casecmp('up') == 0
              @key = '&#x21e1;'
            elsif arr[1].casecmp('right') == 0
              @key = '&#x21e2;'
            elsif arr[1].casecmp('down') == 0
              @key = '&#x21e3;'
            elsif arr[1].casecmp('eacute') == 0
              @key = '&eacute;'
            elsif arr[1].casecmp('clock') == 0
              @key = '&#x231a;'
            elsif arr[1].casecmp('gear') == 0
              @key = '&#x2699;'
            elsif arr[1].casecmp('space') == 0
              @key = '&nbsp;'
            elsif arr[1].casecmp('asterisk') == 0 or arr[1].casecmp('lowast') == 0
              @key = '&lowast;'
            elsif arr[1].casecmp('not') == 0
              @key = '&not;'
            elsif arr[1].casecmp('sup2') == 0
              @key = '&sup2;'
            elsif arr[1].casecmp('sup3') == 0
              @key = '&sup3;'
            elsif arr[1].casecmp('times') == 0
              @key = '&times;'
            elsif arr[1].casecmp('divide') == 0
              @key = '&divide;'
            elsif arr[1].casecmp('radic') == 0 or arr[1].casecmp('root') == 0 or arr[1].casecmp('sqrt') == 0 or arr[1].casecmp('square') == 0
              @key = '&radic;'
            elsif arr[1].casecmp('sdot') == 0
              @key = '&sdot;'
            elsif arr[1].casecmp('middot') == 0
              @key = '&middot;'
            elsif arr[1].casecmp('3dots') == 0
              @key = '&#133;'
            elsif arr[1].casecmp('check') == 0
              @key = '&#x2713;'
            elsif arr[1].casecmp('diamond') == 0 or arr[1].casecmp('diamond_black') == 0 or arr[1].casecmp('dia') == 0 or arr[1].casecmp('dia_bl') == 0
              @key = '&#x25c6;'
            elsif arr[1].casecmp('diamond_white') == 0 or arr[1].casecmp('dia') == 0 or arr[1].casecmp('dia_wh') == 0
              @key = '&#x25c7;'
            elsif arr[1].casecmp('quote') == 0 or arr[1].casecmp('quot') == 0
              @key = '&quot;'
            elsif arr[1].casecmp('amp') == 0
              @key = '&amp;'
            elsif arr[1].casecmp('lt') == 0 or arr[1].casecmp('lchevrons') == 0
              @key = '&lt;'
            elsif arr[1].casecmp('gt') == 0 or arr[1].casecmp('rchevrons') == 0
              @key = '&gt;'
            elsif arr[1].casecmp('lsquare') == 0
              @key = '&#91;'
            elsif arr[1].casecmp('rsquare') == 0
              @key = '&#93;'
            elsif arr[1].casecmp('lbrace') == 0
              @key = '&#123;'
            elsif arr[1].casecmp('rbrace') == 0
              @key = '&#125;'
            elsif arr[1].casecmp('lparensesis') == 0
              @key = '&#40;'
            elsif arr[1].casecmp('rparensesis') == 0
              @key = '&#41;'
            elsif arr[1].casecmp('copy') == 0 or arr[1].casecmp('at') == 0 or arr[1].casecmp('atmark') == 0
              @key = '&copy;'
            elsif arr[1].casecmp('deg') == 0
              @key = '&deg;'
            elsif arr[1].casecmp('pm') == 0 or arr[1].casecmp('plusmn') == 0
              @key = '&plusmn;'
            elsif arr[1].casecmp('yen') == 0
              @key = '&yen;'
            elsif arr[1].casecmp('percent') == 0
              @key = '&#37;'
            else
              @key = arr[1]
            end
          else
            @key = arr[0]
            i=1
          end
          while (i<arr.size)
            @classes=@classes+" "+arr[i]
            i=i+1
          end
        end
      end
      super
    end

    def render(context)
      if @key
        "<i class='key#{@classes}'>#{@key}</i>"
      else
        ""
      end
    end
  end
end

Liquid::Template.register_tag('key', Jekyll::KeyboardKey)
