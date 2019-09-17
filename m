Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37640B4B67
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 11:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:From:To:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcDL3NbImzwtKHF4KWBn97t9d3a9gOJUpguvmB4QrHs=; b=eyGu3NK+Z6tpds
	VyCv+TJK0J4y/3OvRZk1g8YKpGUjDyMDiihJZ4H57N6M7pDnAWGn+3uMo3NqxEgeKvBbP0g4zuzt9
	fPsDbTGBfltafo5wPhcITzSSb/2na566n1uXH//TYaAXenRtysxsW+sJidz/tDV1zBJ9y5sYXyPt1
	xXsyQWLyXcCUOQToJqREoN5oCBRNKVgH5koW6ToN1fs8gYe8o0Zz93MboK3xpnJgUi8e5uSnbgDbq
	5QcwjQW1muyQe//BQnGdXRfGcZwV8RQFJN9sTP+NJSuI8zvcKEBqw0CWHseuoIPQ9EYtKjYOSszK2
	BcDBUdEHPSkEDSoRjRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAFj-0004rq-1n; Tue, 17 Sep 2019 09:58:31 +0000
Received: from mail4.protonmail.ch ([185.70.40.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAFb-0004p5-Nb
 for linux-riscv@lists.infradead.org; Tue, 17 Sep 2019 09:58:25 +0000
Date: Tue, 17 Sep 2019 09:58:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aurabindo.in;
 s=protonmail; t=1568714301;
 bh=ftJdTOKlBr/AG20OwG1MTUH8i2f7oG0aNtJYOC26Q5I=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
 Feedback-ID:From;
 b=h7fwfvpvSgI4B6Q40CBaRg5cnJ0/Iz3EmB2KLqRa5RVwn3/TtbQTzhBzyGAQnNZEk
 NvzxRMs6HVFIIwV5sDuXUPIaB4Ra+CzcDL/4rqAROsAUEleubQTba+ogOA93AeTyuK
 SeZLT6owgA+nCuFWJwobVVA0qDDrI1ln6SMk7XRI=
To: Baolin Wang <baolin.wang@linaro.org>
From: Aurabindo Jayamohanan <mail@aurabindo.in>
Subject: Re: [PATCH] spi: sifive: check return value for
 platform_get_resource()
Message-ID: <7kLa83nF-ufh-AGA_LpBQ6M-ErUf-LEVXANxL2LmirJAh-snvVtJLTVFkBKFxaHvIH9Vi1E3iXDmxW6Ijktoo6k1S7pyFrwmVVLkhKr4Q_Q=@aurabindo.in>
In-Reply-To: <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
References: <20190917085627.4562-1-mail@aurabindo.in>
 <CAMz4kuJczzjTPSohQ=kbZ0Pr7U_9-hzXk-jPgKk79PENOM1-dA@mail.gmail.com>
Feedback-ID: D1Wwva8zb0UdpJtanaReRLGO3iCsewpGmDn8ZDKmpao-Gnxd2qXPmwwrSQ99r5Q15lmK-D8x6vKzqhUKCgzweA==:Ext:ProtonMail
MIME-Version: 1.0
X-Spam-Status: No, score=3.8 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLACK autolearn=no
 autolearn_force=no version=3.4.2
X-Spam-Level: ***
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_025823_929170_9BF6FD8E 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: aurabindo.in]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.70.40.27 listed in list.dnswl.org]
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
Cc: "palmer@sifive.com" <palmer@sifive.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CuKAkOKAkOKAkOKAkOKAkOKAkOKAkCBPcmlnaW5hbCBNZXNzYWdlIOKAkOKAkOKAkOKAkOKAkOKA
kOKAkApPbiBUdWVzZGF5LCBTZXB0ZW1iZXIgMTcsIDIwMTkgMjo1MyBQTSwgQmFvbGluIFdhbmcg
PGJhb2xpbi53YW5nQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBPbiBUdWUsIDE3IFNlcCAyMDE5IGF0
IDE3OjEyLCBBdXJhYmluZG8gSmF5YW1vaGFuYW4gbWFpbEBhdXJhYmluZG8uaW4gd3JvdGU6Cj4K
PiA+IHBsYXRmb3JtX2dldF9yZXNvdXJjZSgpIG1heSByZXR1cm4gTlVMTC4gSWYgaXQgaXMgc28s
IHJldHVybiAtRU5YSU8KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBdXJhYmluZG8gSmF5YW1vaGFu
YW4gbWFpbEBhdXJhYmluZG8uaW4KPiA+Cj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPgo+ID4gZHJpdmVycy9zcGkvc3BpLXNpZml2
ZS5jIHwgNiArKysrKysKPiA+IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGktc2lmaXZlLmMgYi9kcml2ZXJzL3NwaS9zcGktc2lm
aXZlLmMKPiA+IGluZGV4IDkzZWMyYzZjZGJmZC4uNjc0ODUwNjdhNjk0IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9zcGkvc3BpLXNpZml2ZS5jCj4gPiArKysgYi9kcml2ZXJzL3NwaS9zcGktc2lm
aXZlLmMKPiA+IEBAIC0zMDgsNiArMzA4LDEyIEBAIHN0YXRpYyBpbnQgc2lmaXZlX3NwaV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gcGxhdGZvcm1fc2V0X2RydmRhdGEo
cGRldiwgbWFzdGVyKTsKPiA+Cj4gPiAgICAgICAgIHJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJj
ZShwZGV2LCBJT1JFU09VUkNFX01FTSwgMCk7Cj4gPgo+ID4KPiA+IC0gICAgICAgICBpZiAoIXJl
cykgewo+ID4KPiA+Cj4gPiAtICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJu
byBJT01FTSByZXNvdXJjZSBmb3VuZFxcbiIpOwo+ID4KPiA+Cj4gPiAtICAgICAgICAgICAgICAg
ICByZXQgPSAtRU5YSU87Cj4gPgo+ID4KPiA+IC0gICAgICAgICAgICAgICAgIGdvdG8gcHV0X21h
c3RlcjsKPiA+Cj4gPgo+ID4gLSAgICAgICAgIH0KPiA+Cj4gPgo+Cj4gU2VlbXMgdW5uZWNlc3Nh
cnksIHRoZSBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoKSBhbHJlYWR5IHZhbGlkYXRlZCBpZgo+IHRo
ZSByZXNvdXJjZSBpcyBhdmFpbGFibGUuCj4KCk9rYXksIHRoYW5rcyBmb3IgdGhlIGhlYWRzdXAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1y
aXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
