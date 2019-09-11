Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2572AF665
	for <lists+linux-riscv@lfdr.de>; Wed, 11 Sep 2019 09:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Type:MIME-Version:Message-ID:Subject:From:To:Date:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QD5JFi3HOa+glEWGy6WySsERmh9GRQd9mXgDIEr1dJM=; b=Ibl
	G3q3kKa0FEyBSkMQjr+WTiD6WxvRgAUFZc+4Jui7ZnKIdydkBze9C3tIXnnHjOSnmADaQGoHNyYEE
	NKdOX1T9S+iNF16J3ys5lKCOpApW0AEAE6grdkFCdkdMcsnAiLsGGDGsKnNp39bb5vZ99MclEf+5A
	1y8vonqN3kLghaC6o0eMt0uDYL5+bQvea+X30cFw3e+IXF+WE2vm1WpzYOVLsE/pXDdrAK0cYLPp4
	Hwzi3/DMfXmQItFMezm4eY97yF0wPIT0W2LtrcYglH6i2I2BrosiMz7crHDwazUdHRLiXV3s77TMc
	jzEOSAYzNFxeVAfYVNYsBtViiAfk4Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wiz-0003b8-DM; Wed, 11 Sep 2019 07:07:33 +0000
Received: from mail2.protonmail.ch ([185.70.40.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wis-0003Zy-D5
 for linux-riscv@lists.infradead.org; Wed, 11 Sep 2019 07:07:27 +0000
Date: Wed, 11 Sep 2019 07:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568185634;
 bh=o1L+8KhqsX2u25XHVsCqbScSrZDVm6VBVGwx2oUNrkc=;
 h=Date:To:From:Cc:Reply-To:Subject:Feedback-ID:From;
 b=B1ngaLX5Wd0vi0NHSp7skQKh8dYy4lezL9ofvPLKxXliM72y9PJF4LOxBEYH7uFZC
 Z++rLaVCEzu2lnHJ/qIXYW5ltoyhKg1aOg/UTULTuX3epfAqsBxEgfx1+viO2SlrCP
 wUAMOlolarO3wnMNqjqWJ5w30HjId+EtZmFEOyv0=
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: [RFC] buildtar: add case for riscv architecture
Message-ID: <NwVOGH2ZdDQaDK35QUy7y8GS__G8IYSIUUIBAJsimZq5BgvI3SzLS3uY6fV7Pgppq-RTRHzpT-8KrsLjDN74CPWwHTCWoSgHkGbeJNvyS30=@aurabindo.in>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="b1_8aa5ac17d5a37d2299526ba3f06c3a3e"
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_000726_599710_C4B40D06 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.22 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Reply-To: Aurabindo Jayamohanan <mail@aurabindo.in>
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.

--b1_8aa5ac17d5a37d2299526ba3f06c3a3e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to know if something extra needs to be done other than copying=
 compressed kernel image, when making tar package for riscv architecture. P=
lease see the attached patch.

--

Thanks and Regards,
Aurabindo Jayamohanan

--b1_8aa5ac17d5a37d2299526ba3f06c3a3e
Content-Type: text/x-patch; name="0001-buildtar-add-riscv-case.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=0001-buildtar-add-riscv-case.patch

RnJvbSA4NmZlYjkzYzYyZGFhNjEzMTRkZjBiYmUxYTExMjcyYzIzYjFlYWRiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBBdXJhYmluZG8gSmF5YW1vaGFuYW4gPG1haWxAYXVyYWJpbmRv
LmluPgpEYXRlOiBUaHUsIDUgU2VwIDIwMTkgMTI6NTI6NDUgKzA1MzAKU3ViamVjdDogW1BBVENI
XSBidWlsZHRhcjogYWRkIHJpc2N2IGNhc2UKCkNvcHkgY29tcHJlc3NlZCBrZXJuZWwgaW1hZ2Ug
aW50byB0YXJiYWxsIHJvb3QuIFNpbWlsYXIKYWN0aW9uIGZvciBib3RoIGFybTY0IGFuZCByaXNj
diBhcmNoaXRlY3R1cmVzLgoKU2lnbmVkLW9mZi1ieTogQXVyYWJpbmRvIEpheWFtb2hhbmFuIDxt
YWlsQGF1cmFiaW5kby5pbj4KLS0tCiBzY3JpcHRzL3BhY2thZ2UvYnVpbGR0YXIgfCA2ICsrKy0t
LQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9zY3JpcHRzL3BhY2thZ2UvYnVpbGR0YXIgYi9zY3JpcHRzL3BhY2thZ2UvYnVpbGR0
YXIKaW5kZXggMmY2NmM4MWU0MDIxLi4zODhkMGZjYmU4YzIgMTAwNzU1Ci0tLSBhL3NjcmlwdHMv
cGFja2FnZS9idWlsZHRhcgorKysgYi9zY3JpcHRzL3BhY2thZ2UvYnVpbGR0YXIKQEAgLTEwNSwx
MCArMTA1LDEwIEBAIGNhc2UgIiR7QVJDSH0iIGluCiAJCQljcCAtdiAtLSAiJHtvYmp0cmVlfS92
bWxpbnV4IiAiJHt0bXBkaXJ9L2Jvb3Qvdm1saW51eC0ke0tFUk5FTFJFTEVBU0V9IgogCQlmaQog
CQk7OwotCWFybTY0KQorCWFybTY0fHJpc2N2KQogCQlmb3IgaSBpbiBJbWFnZS5iejIgSW1hZ2Uu
Z3ogSW1hZ2UubHo0IEltYWdlLmx6bWEgSW1hZ2UubHpvIDsgZG8KLQkJCWlmIFsgLWYgIiR7b2Jq
dHJlZX0vYXJjaC9hcm02NC9ib290LyR7aX0iIF0gOyB0aGVuCi0JCQkJY3AgLXYgLS0gIiR7b2Jq
dHJlZX0vYXJjaC9hcm02NC9ib290LyR7aX0iICIke3RtcGRpcn0vYm9vdC92bWxpbnV6LSR7S0VS
TkVMUkVMRUFTRX0iCisJCQlpZiBbIC1mICIke29ianRyZWV9L2FyY2gvJHtBUkNIfS9ib290LyR7
aX0iIF0gOyB0aGVuCisJCQkJY3AgLXYgLS0gIiR7b2JqdHJlZX0vYXJjaC8ke0FSQ0h9L2Jvb3Qv
JHtpfSIgIiR7dG1wZGlyfS9ib290L3ZtbGludXotJHtLRVJORUxSRUxFQVNFfSIKIAkJCQlicmVh
awogCQkJZmkKIAkJZG9uZQotLSAKMi4yMy4wCgo=


--b1_8aa5ac17d5a37d2299526ba3f06c3a3e
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--b1_8aa5ac17d5a37d2299526ba3f06c3a3e--


