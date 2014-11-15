# My Personal Overlay for Miscellaneous Ebuilds

~~~
# cat > /etc/layman/overlays/soft.xml << EOF
<?xml version="1.0" ?>
<repositories version="1.0">
	<repo quality="experimental" status="unofficial">
		<name>soft</name>
		<description>My personal overlay</description>
		<homepage>https://bitbucket.org/Soft/overlay</homepage>
		<owner type="person">
			<email>samuel.lauren@iki.fi</email>
			<name>Samuel Laurén</name>
		</owner>
		<source type="mercurial">https://bitbucket.org/Soft/overlay</source>
	</repo>
</repositories>
EOF
~~~

