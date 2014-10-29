### IPew Attack Map

![img](pewpew.png)

Why should security vendors be the only ones allowed to use inane, animated visualizations to "compensate"? Now, **you** can have your very own IP attack map that's just as useful as everyone else's.

IPew is a feature-rich, customizable D3 * javascript visualization, needing nothing more than a web server capable of serving static content and a sense of humor to operate. It's got all the standard features that are expected from it including:

- _Scary_ dark background!
- Source & destination country actor/victim attribution!
- Inane attack names!

BUT, it has one critical element missing from the others: **SOUND EFFECTS**! What good is a global cyberbattle without some cool sounds.

In all seriousness, IPew provides a simple framework - based on [Datamaps]() - for displaying cartographic data in a (mostly) responsive way and shows how to use dynamic data via javascript event timers and data queues.

You can customize the display through a myriad of query string options:

### Sounds

IPew includes the following sounds:

- no sound option set - Star Wars blaster! (guess which one!)
- `tng=1` - Star Trek:TNG Photons!
- `wargames=1` - WarGames key clicks!
- `b5=1` - Babylon 5 defense grid cannons!
- `pew=1` - Somewhat disturbing human-made "pew-pew" sound
- `galaga=1` - Classic arcade sound!

To turn off sound effects (but, _why?_ :-), use `nofx=1` and to randomly cycle through them all use `allfx=1`

By default, IPew will use a statistical model for choosing source countries for the attacks, but you can level the playing field and set `random_mode=1` to give all countries the same cyber-advatage.

In similar vein, and using the perpsective many prominent security vendors and pundits seem to have, you can make all cyber attacks from from China with `china_mode=1`.

IPew's default attack timing is based on observational data from many sources, but you can make it look like the world is on the brink of cyber collapse by setting `bad_day=1`.

Finally, you can proudly display your organization's name by setting `org_name=MyOrgName` (URL encode any spaces or special characters).

One of my personal favorites is [http://dds.ec/pewpew/index.html?china_mode=1&org_name=Mandiant&bad_day=1](http://dds.ec/pewpew/index.html?china_mode=1&org_name=Mandiant&bad_day=1).

### Using IPew

Feel free to use the hosted version, but we've released IPew under a liberal Creative Commons license, so clone away and use as you see fit, just remember to share your creations (and code) with others.
