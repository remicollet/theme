<?xml version="1.0" encoding="utf-8"?>
<?python
import time
def ymd(stamp):
    return time.strftime('%Y-%m-%d', time.localtime(int(stamp)))
?>
<html xmlns:py="http://purl.org/kid/ns#" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title py:content="'%s' % repo_data['title']"/>
	<link rel="stylesheet" href="layout/repostyle.css" type="text/css"/>
	<meta name="robots" content="noindex,follow" />
	<link rel="shortcut icon" href="/favicon.ico" />
</head>
<body>
	<div id="page">
		<div id="top">
			<h1><span><a href="/">Les RPM de Remi - Packages</a></span></h1>
		</div>
		<p id="prelude">
			<a href="http://blog.famillecollet.com/">Blog</a> | 
			<a href="http://forums.famillecollet.com/">Forums</a> | 
			<a href="/">Repository</a>
		</p>
		<p class="nav">Jump to letter: [
			<span class="letterlist">
				<a py:for="letter in repo_data['letters']" class="nlink" href="${'letter_%s.group.html' % letter.lower()}" py:content="letter"/>
			</span>]
		</p>
		<div id="wrapper">
			<div id="main">
				<div id="content">
					<h2 py:content="'%s - %s' % (pkg_data['name'], pkg_data['summary'])"/>
					<dl id="pkg_main">
						<dt py:if="pkg_data['url']">Website:</dt>
						<dd py:if="pkg_data['url']"><a href="${pkg_data['url']}" py:content="pkg_data['url']"/></dd>
						<dt py:if="pkg_data['rpm_license']">Licence:</dt>
						<dd py:if="pkg_data['rpm_license']"  py:content="pkg_data['rpm_license']"/>
						<dt py:if="pkg_data['vendor']">Vendor:</dt>
						<dd py:if="pkg_data['vendor']" py:content="pkg_data['vendor']"/>
					</dl>
					<dl id="pkg_description">
						<dt>Description:</dt>
						<dd><pre py:content="pkg_data['description']"/></dd>
					</dl>
					<h3>Packages</h3>
					<table border="0" cellpadding="0" cellspacing="10">
						<tr py:for="(e, v, r, a, built, size, loc, author, log, added) in pkg_data['rpms']">
							<td>
								<a href="${'../%s' % loc}" class="inpage" py:content="'%s-%s-%s.%s' % (pkg_data['name'], v, r, a)"/> 
							</td>
							<td class="filesize">
								[<span class="nowrap" py:content="size"/>]
							</td>
							<td py:if="log">
								<strong>Changelog</strong> by <span py:content="'%s (%s)' % (author, ymd(added))"/>:
								<pre py:content="log"/>
							</td>
							<td py:if="not log">
								<em>(no changelog entry)</em>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="sidebar">
				<h2 py:content="repo_data['title']"/>
				<ul class="levbarlist">
					<li>
						<a href="/" class="nlink" title="Back to distribution choice">« Back to distro</a>
					</li>
					<li>
						<a href="../../../" class="nlink" title="Back to repository choice">« Back to repo</a>
					</li>
					<li>
						<a href="${group_data['filename']}" class="nlink" title="Back to package listing">« Back to group</a>
					</li>
				</ul>
				<h2>Other links</h2>
				<ul>
					<li><a href="https://www.amazon.com/wishlist/1AFH00IXFY6M0" class="nlink" title="My Amazon.com Wishlist">WishList</a></li>
					<li><a href="https://www.amazon.fr/wishlist/33P6MW6KQC8GX"  class="nlink" title="Mes Envies cadeaux sur Amazon.fr">Envies cadeaux</a></li>
				</ul>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post"><div>
<input type="hidden" name="cmd" value="_s-xclick" />
<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
" />
<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif" name="submit" alt="PayPal - The safer, easier way to pay online!" />
<img alt="" src="https://www.paypal.com/fr_FR/i/scr/pixel.gif" width="1" height="1" />
</div></form>
			</div>
		</div>
        <hr style="clear: both;"/>
	</div>
	<div id="footer">
		<ul id="w3c">
			<li>
				<a id="vxhtml" href="http://validator.w3.org/check/referer">XHTML 1.1 valide</a>
			</li>
			<li>
				<a id="vcss" href="http://jigsaw.w3.org/css-validator/check/referer">CSS 2.0 valide</a>
			</li>
		</ul>
		<p>
			Listing created by <a href="http://mricon.com/trac/wiki/Repoview" class="repoview" py:content="'Repoview-%s' % repo_data['my_version']"/> | Designed for <a href="http://blog.famillecoollet.com">Remi</a> by <a href="http://blog.ulysses.fr">Trashy</a>
		</p>
	</div>
</body>
</html>
