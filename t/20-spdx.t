use v6;
use Test;
use License::Software;

my $pair = "Bahtiar `kalkin-` Gadimov" => 2000..2016;
my @license-names = gather for License::Software::get-all() {
    my $name = $_.^name;
    require ::($name);
    take ::($name).new().spdx;

};
my @spdx = [ <Glide>, <Abstyles>, <AFL-1.1>, <AFL-1.2>, <AFL-2.0>, <AFL-2.1>,
            <AFL-3.0>, <AMPAS>, <APL-1.0>, <Adobe-Glyph>, <APAFML>,
            <Adobe-2006>, <AGPL-1.0>, <Afmparse>, <Aladdin>, <ADSL>, <AMDPLPA>,
            <ANTLR-PD>, <Apache-1.0>, <Apache-1.1>, <Apache-2.0>, <AML>,
            <APSL-1.0>, <APSL-1.1>, <APSL-1.2>, <APSL-2.0>, <Artistic-1.0>,
            <Artistic-1.0-Perl>, <Artistic-1.0-cl8>, <Artistic-2.0>, <AAL>,
            <Bahyph>, <Barr>, <Beerware>, <BitTorrent-1.0>, <BitTorrent-1.1>,
            <BSL-1.0>, <Borceux>, <BSD-2-Clause>, <BSD-2-Clause-FreeBSD>,
            <BSD-2-Clause-NetBSD>, <BSD-3-Clause>, <BSD-3-Clause-Clear>,
            <BSD-3-Clause-No-Nuclear-License>,
            <BSD-3-Clause-No-Nuclear-License-2014>,
            <BSD-3-Clause-No-Nuclear-Warranty>, <BSD-4-Clause>,
            <BSD-Protection>, <BSD-Source-Code>, <BSD-3-Clause-Attribution>,
            <0BSD>, <BSD-4-Clause-UC>, <bzip2-1.0.5>, <bzip2-1.0.6>, <Caldera>,
            <CECILL-1.0>, <CECILL-1.1>, <CECILL-2.0>, <CECILL-2.1>, <CECILL-B>,
            <CECILL-C>, <ClArtistic>, <MIT-CMU>, <CNRI-Jython>, <CNRI-Python>,
            <CNRI-Python-GPL-Compatible>, <CPOL-1.02>, <CDDL-1.0>, <CDDL-1.1>,
            <CPAL-1.0>, <CPL-1.0>, <CATOSL-1.1>, <Condor-1.1>, <CC-BY-1.0>,
            <CC-BY-2.0>, <CC-BY-2.5>, <CC-BY-3.0>, <CC-BY-4.0>, <CC-BY-ND-1.0>,
            <CC-BY-ND-2.0>, <CC-BY-ND-2.5>, <CC-BY-ND-3.0>, <CC-BY-ND-4.0>,
            <CC-BY-NC-1.0>, <CC-BY-NC-2.0>, <CC-BY-NC-2.5>, <CC-BY-NC-3.0>,
            <CC-BY-NC-4.0>, <CC-BY-NC-ND-1.0>, <CC-BY-NC-ND-2.0>,
            <CC-BY-NC-ND-2.5>, <CC-BY-NC-ND-3.0>, <CC-BY-NC-ND-4.0>,
            <CC-BY-NC-SA-1.0>, <CC-BY-NC-SA-2.0>, <CC-BY-NC-SA-2.5>,
            <CC-BY-NC-SA-3.0>, <CC-BY-NC-SA-4.0>, <CC-BY-SA-1.0>,
            <CC-BY-SA-2.0>, <CC-BY-SA-2.5>, <CC-BY-SA-3.0>, <CC-BY-SA-4.0>,
            <CC0-1.0>, <Crossword>, <CrystalStacker>, <CUA-OPL-1.0>, <Cube>,
            <curl>, <D-FSL-1.0>, <diffmark>, <WTFPL>, <DOC>, <Dotseqn>, <DSDP>,
            <dvipdfm>, <EPL-1.0>, <ECL-1.0>, <ECL-2.0>, <eGenix>, <EFL-1.0>,
            <EFL-2.0>, <MIT-advertising>, <MIT-enna>, <Entessa>, <ErlPL-1.1>,
            <EUDatagrid>, <EUPL-1.0>, <EUPL-1.1>, <Eurosym>, <Fair>, <MIT-feh>,
            <Frameworx-1.0>, <FreeImage>, <FTL>, <FSFAP>, <FSFUL>, <FSFULLR>,
            <Giftware>, <GL2PS>, <Glulxe>, <AGPL-3.0-or-later>,
            <AGPL-3.0-only>, <GFDL-1.1>, <GFDL-1.2>, <GFDL-1.3>, <GPL-1.0>,
            <GPL-2.0>, <GPL-3.0-only>, <GPL-3.0-or-later>,
            <LGPL-2.1>, <LGPL-3.0-only>, <LGPL-3.0-or-later>,
            <LGPL-2.0>, <gnuplot>, <gSOAP-1.3b>, <HaskellReport>,
            <HPND>, <IBM-pibs>, <IPL-1.0>, <ICU>, <ImageMagick>, <iMatix>,
            <Imlib2>, <IJG>, <Info-ZIP>, <Intel-ACPI>, <Intel>,
            <Interbase-1.0>, <IPA>, <ISC>, <JasPer-2.0>, <JSON>, <LPPL-1.0>,
            <LPPL-1.1>, <LPPL-1.2>, <LPPL-1.3a>, <LPPL-1.3c>, <Latex2e>,
            <BSD-3-Clause-LBNL>, <Leptonica>, <LGPLLR>, <Libpng>, <libtiff>,
            <LAL-1.2>, <LAL-1.3>, <LiLiQ-P-1.1>, <LiLiQ-Rplus-1.1>,
            <LiLiQ-R-1.1>, <LPL-1.02>, <LPL-1.0>, <MakeIndex>, <MTLL>, <MS-PL>,
            <MS-RL>, <MirOS>, <MITNFA>, <MIT>, <Motosoto>, <MPL-1.0>,
            <MPL-1.1>, <MPL-2.0>, <MPL-2.0-no-copyleft-exception>, <mpich2>,
            <Multics>, <Mup>, <NASA-1.3>, <Naumen>, <NBPL-1.0>, <Net-SNMP>,
            <NetCDF>, <NGPL>, <NOSL>, <NPL-1.0>, <NPL-1.1>, <Newsletr>, <NLPL>,
            <Nokia>, <NPOSL-3.0>, <NLOD-1.0>, <Noweb>, <NRL>, <NTP>, <Nunit>,
            <OCLC-2.0>, <ODbL-1.0>, <PDDL-1.0>, <OCCT-PL>, <OGTSL>,
            <OLDAP-2.2.2>, <OLDAP-1.1>, <OLDAP-1.2>, <OLDAP-1.3>, <OLDAP-1.4>,
            <OLDAP-2.0>, <OLDAP-2.0.1>, <OLDAP-2.1>, <OLDAP-2.2>,
            <OLDAP-2.2.1>, <OLDAP-2.3>, <OLDAP-2.4>, <OLDAP-2.5>, <OLDAP-2.6>,
            <OLDAP-2.7>, <OLDAP-2.8>, <OML>, <OPL-1.0>, <OSL-1.0>, <OSL-1.1>,
            <OSL-2.0>, <OSL-2.1>, <OSL-3.0>, <OpenSSL>, <OSET-PL-2.1>,
            <PHP-3.0>, <PHP-3.01>, <Plexus>, <PostgreSQL>, <psfrag>, <psutils>,
            <Python-2.0>, <QPL-1.0>, <Qhull>, <Rdisc>, <RPSL-1.0>, <RPL-1.1>,
            <RPL-1.5>, <RHeCos-1.1>, <RSCPL>, <RSA-MD>, <Ruby>, <SAX-PD>,
            <Saxpath>, <SCEA>, <SWL>, <SMPPL>, <Sendmail>, <SGI-B-1.0>,
            <SGI-B-1.1>, <SGI-B-2.0>, <OFL-1.0>, <OFL-1.1>, <SimPL-2.0>,
            <Sleepycat>, <SNIA>, <Spencer-86>, <Spencer-94>, <Spencer-99>,
            <SMLNJ>, <SugarCRM-1.1.3>, <SISSL>, <SISSL-1.2>, <SPL-1.0>,
            <Watcom-1.0>, <TCL>, <TCP-wrappers>, <Unlicense>, <TMate>,
            <TORQUE-1.1>, <TOSL>, <Unicode-DFS-2015>, <Unicode-DFS-2016>,
            <Unicode-TOU>, <UPL-1.0>, <NCSA>, <Vim>, <VOSTROM>, <VSL-1.0>,
            <W3C-20150513>, <W3C-19980720>, <W3C>, <Wsuipa>, <Xnet>, <X11>,
            <Xerox>, <XFree86-1.1>, <xinetd>, <xpp>, <XSkat>, <YPL-1.0>,
            <YPL-1.1>, <Zed>, <Zend-2.0>, <Zimbra-1.3>, <Zimbra-1.4>, <Zlib>,
            <zlib-acknowledgement>, <ZPL-1.1>, <ZPL-2.0>, <ZPL-2.1>];

plan @license-names.elems;
for @license-names -> $name {
    my $license = license($name).new: $pair;
    ok $license.spdx ∈ @spdx, "$name is valid SPDX id";
}

# vim: ft=perl6
