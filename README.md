# Less Bad Search
Collecting the web's worst SEO spammers and website copiers and compiling them into a nice uBlock filter + hosts file. Note this is totally opinionated and might filter out totally credible sites.

## Why?
Over the years I've noticed results from Google and the like take a nosedive in quality- due both in part to algorithm changes as well as the rise of what I and many others call "SEO Spammers" (companies and/or people that abuse flaws with the ranking algorithm to spam search results with low-quality websites). Apparently I'm not the only one to have noticed this, and recently in some circles there's been discussion about this very thing [^1][^2][^3][^4], even driving some [^5] to use Google's custom search engine feature to create a whitelisted version of Google search which works *very* well for STEM-related subjects despite being a relatively small number of websites.

### But, why not just use uBlacklist?
Simple. Firefox mobile doesn't have a compatible version of uBlacklist that I can install, but it does have uBlock, so this is my personal solution to that that'd I'd like to share.

### Cool, but how do I use it?
Simply go to your uBlock Origin settings, go to Filter lists, at the bottom add custom, and enter this as a URL:

```
https://raw.githubusercontent.com/ctrlaltf2/less-bad-search/main/output/filterlist.txt
```

[^1]: [Michael Seibel of YC on Twitter](https://twitter.com/mwseibel/status/1477701120319361026) ([Nitter Link](https://nitter.net/mwseibel/status/1477701120319361026))
[^2]: [Paul Graham on Twitter](https://twitter.com/paulg/status/1477760548787920901) ([Nitter Link](https://nitter.net/paulg/status/1477760548787920901)
[^3]: Related HN Discussions: [Seibel's Tweet](https://news.ycombinator.com/item?id=29772136)
[^4]: [A modest proposal to fix web search](https://yanmaani.github.io/a-modest-proposal-to-fix-web-search/)
[^5]: [No Trash Search (github.io webapp)](https://notrashsearch.github.io/)
