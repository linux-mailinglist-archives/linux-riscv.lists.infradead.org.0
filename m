Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCEFB53BE
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 19:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVQFp1XvnhhQvbzUI9FvONlM+zsaWt+OYJyG7WXKM9A=; b=oYzQ+BLqXyVQvH
	H+oL4sPOSmXSyXY4w1FSx3mYimNeXr7ILpNvSrroVNTDfLqwInIHHJD8AhtMiTRfr7dALWnwoDuUP
	dD8Xu2Y6wbaH45j7sTgEufnWsg4a1amBLOh1EG82JQQmtTX2rqSAIbAdMOxn8ivGufJTaXzxrj9Dx
	Oz4O9MEKtZTnLkaQNMNKcPs5X+k2KYnyZOW8ZTNQr9jDQiU3dmTZtQg/DedU2RLZRm0NxMpyWN4lK
	+AcO+I7ItLwNV68f4FHAtXiGJoL0n5sE6+5QJRw+xY/Z6XYabMBLRwZNPpsJFQWFfMKLPdZjokhk/
	wsyPGmup3+ctXqGk2L9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAH30-0006RN-6d; Tue, 17 Sep 2019 17:13:50 +0000
Received: from mail-40132.protonmail.ch ([185.70.40.132])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAH2t-0006QU-Ne
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 17:13:45 +0000
Date: Tue, 17 Sep 2019 17:13:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568740418;
 bh=zbLTKg65FRGbaAMZXqIWuQw8Y6E7IYfG4i4H6e4pYWs=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=o9fbnOFerI9SjR7jDV8Tosglhcbs4IieOWKlLYD28UptUeuC+RN6KbitIpnA3nJPx
 q4ywL9lJhMcQmeYQPkdLjP39SQ3vqL96n9phf95xKwmcYwBBnJIsxkHsiAoexoBjjO
 dDOg4FBCWNIjam0Qf2arYyyu26JtymIryY2VbHmI=
To: Paul Walmsley <paul.walmsley@sifive.com>
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
Message-ID: <KINCBM4noQrzRVzR5KPbVAIlCxDi1_pLvCu6FYZT3Alj83dH1Q6Aspaph78A1c17AxxG1vSVuW-vdPSka8Cr-zdaGJbEZPQg4Q14gax4-H0=@aurabindo.in>
In-Reply-To: <alpine.DEB.2.21.9999.1909170820470.21451@viisi.sifive.com>
References: <20190917085627.4562-1-mail@aurabindo.in>
 <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1909170514130.11980@viisi.sifive.com>
 <ij_UksEXUomr_L7KQam02lHBryAppgwKDjG90VbVcRRUeXlKU8TAiBWc3aU8vt20Wvlwt_6NDgz5fuMSwwP1mm-1eP6GYWoR1Kbr0y0ElRk=@aurabindo.in>
 <alpine.DEB.2.21.9999.1909170709070.8198@viisi.sifive.com>
 <alpine.DEB.2.21.9999.1909170820470.21451@viisi.sifive.com>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=3.8 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLACK autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_101343_935568_F9B8D3BC 
X-CRM114-Status: UNSURE (   4.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Baolin Wang <baolin.wang@linaro.org>,
 "palmer@sifive.com" <palmer@sifive.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgUGF1bCwKCuKAkOKAkOKAkOKAkOKAkOKAkOKAkCBPcmlnaW5hbCBNZXNzYWdlIOKAkOKAkOKA
kOKAkOKAkOKAkOKAkApPbiBUdWVzZGF5LCBTZXB0ZW1iZXIgMTcsIDIwMTkgODo1MSBQTSwgUGF1
bCBXYWxtc2xleSA8cGF1bC53YWxtc2xleUBzaWZpdmUuY29tPiB3cm90ZToKCj4KPgo+IEkganVz
dCByZWNhbGxlZCB0aGF0IFl1ZUhhaWJpbmcgYWxyZWFkeSBwb3N0ZWQgYSBwYXRjaCB0byBkbyB0
aGlzOgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcmlzY3YvYWxwaW5lLkRFQi4y
LjIxLjk5OTkuMTkwOTA0MTUyMDEzMC4xMzUwMkB2aWlzaS5zaWZpdmUuY29tLwo+CgpBaCwgc29y
cnkgZm9yIHRoZSBub2lzZS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2Cg==
