keyboardkey
===========

keyboardkey will provide "key" tag for the easy writing way of keyboard like symbol for Octopress.

# Installation

Copy `plugins/keyboardkey.rb` to your `plugins` directory,
and `sass/custom/_keyboardkey.scss` to your `sass/custom/` directory.

Add a following line to `sass/custom/_styles.scss`:

    @import "keyboardkey";

Done!

# Usage
Use `key` tag to produce keyboardkey like symbol like:

    {% key A%}

For some symbols, you can use `symbol` argument at the second
with symbol names such `control`, `option`, `shift`, etc... (they are Mac symbols.)

See `keyboardkey.rb` for other symbols.

If you want to change the size of outputs, use `key_small` or `key_large`.
(In addition, there are `key_half`, `key_2x`, `key_3x`, `key_4x`, `key_5x` options.)

If you like black key, use `key_black`.
`key_uppercase` option will make all characters uppercase.

Examples:

Show &#x2303;:

    {% key symbol control %} :

Show Control:

    {% key Control %} :

Show black, large key with a in uppercase:

    {% key A key_black key_large key_uppercase%} :


# Standalone scss file
`keyboardkey.scss` allows you to use direct discription w/o Liquid filter.

If you `keyboardkey.scss` in your site, you can use:

    "<i class='key'>A</i>"
    "<i class='key key_ctrl'></i>"

to show keys of A or &#x2303;.
