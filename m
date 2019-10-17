Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2131CDB16A
	for <lists+linux-riscv@lfdr.de>; Thu, 17 Oct 2019 17:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78AW1K9OEJ/EZ4dX0BZa+duknLcdRQlOXG8lvalBNso=; b=WumjGBj3lVxgne
	12sPiqIKSTLycRZUSecaOs5pHk3chtJO2SjHsdPZxxYk+SKLhTMbx8mpQkmljXbD2Bkbs/kvoxMH5
	hyOT4pfQP+k5NS9a0ne+/yifOEwdu6qxUl6gBCsADBHLZlwTc2wGDvOjKoSOtuWfNRrtM6h3Hwc4U
	vmQINjw6CyspvBLsoUqJQVy6i0AgBz/d2xIkIhPqSaBdnTgaKrVOnxFaChTr4XyfUlO2h55gcU9rH
	jV1/2SRjF9wzbHEF39Jmv49Hz38rdQZr+qKS1jsT+FUltX21bU6TanWGbPiagKgKuoQzhZrT/CE1G
	gq85HSV/PuWe7ddR/VEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7yq-0007AA-Ay; Thu, 17 Oct 2019 15:46:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7yl-000791-SS
 for linux-riscv@lists.infradead.org; Thu, 17 Oct 2019 15:46:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id b24so3050467wmj.5
 for <linux-riscv@lists.infradead.org>; Thu, 17 Oct 2019 08:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LpMm98A9G00ga12MNbJ0jODH2+qjsFnweorpEgPxlIg=;
 b=azjYJD6BKCcKnp4x/MD0H/GcZPmyW6ssyZ1ZBS5gI8d4aFOvWmJIoLbigG8F6LWIYt
 blUrUcNezydWHG/hC/FTm7a5vIoxxuCAav25Q5mlMxBl4YEWsFfgGcN//4OBUwCl9GUF
 o85qx6ZUWv8wdMgbWyUtotu87O+ejKz85/XNCHsrulEzyowW7EJesSU9i4+1M0PqKJ8O
 DUYegcf0k+iwyimbbgxj1OzF6Qb1z0Aq5linFPT4KOfFxaNzTx1jxLv5i6N7qChmDSFv
 Vk5GT9q7ynQ89+8pUIp8I3gupg5aQ8i9ryPbsrYxO3qmUaf1UaW2Kwj6vrcVw7XVDgvh
 Zckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LpMm98A9G00ga12MNbJ0jODH2+qjsFnweorpEgPxlIg=;
 b=CuSYjgo0CYe0hGM1CYE0LfBuWvz74U8gxbG6AjZ7iKugGQbO3RuhXar1XVYIpuADSt
 OuTYIsUSkefYB6wxtZUrQnQ/dvVLl4I/5WsPI9dMBcxRk/FHzbBGUBuV66Gd1grBOG1T
 8PDVSg+kBrEOkarA0Nxjc7qa4quYarzzeohCjJt7BA1row1nfIwdcAQqOK6kGHkFwoFJ
 GgzxdUczGLZIm31fXaSFYJJex9au6+jFJgTSTCORzm4J8paI9MjpLCH//V3lmEGDrXQE
 fDik5Doo2F5tIoBvzmiwvNVq0BAdncv3xAB347C+Clb8NdHJZW1WbRKN10/CBrUGoUJX
 uQRg==
X-Gm-Message-State: APjAAAXOD/ICV2TXT0qT54CHMoegOLzRwfHqv58EJLiDn0WOEah3SL9+
 a4QXGNnL6ljE9liWxAfYKqV2OQ9wdBmDGn610so=
X-Google-Smtp-Source: APXvYqzOuuynk2wjBmjsQKW/eD6QQ0AEQh12bnM4HZljtKFMfXBtFxBk9g+eF/icQzDgRcq3/f5pRoGc0nIV5EHRutQ=
X-Received: by 2002:a1c:9ec6:: with SMTP id h189mr3317459wme.71.1571327177140; 
 Thu, 17 Oct 2019 08:46:17 -0700 (PDT)
MIME-Version: 1.0
References: <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
 <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
 <dbdd3d63186abb230840b6e8698358afc01a62cb.camel@wdc.com>
 <20191010195851.GA10676@aurel32.net>
 <f2a467d2dfd1828533fee8a8edf7eac51d8c1d84.camel@aisec.fraunhofer.de>
 <20191015222210.GA11794@aurel32.net>
 <6e42e45b9af6467bb72eb4880ae9bf6b5b4f67cd.camel@aisec.fraunhofer.de>
In-Reply-To: <6e42e45b9af6467bb72eb4880ae9bf6b5b4f67cd.camel@aisec.fraunhofer.de>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Thu, 17 Oct 2019 18:45:39 +0300
Message-ID: <CAEn-LTrKyhenjUz0LqqPQumQZpKTRaTucHwrenHHWVGRkqp7pQ@mail.gmail.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
To: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_084619_928092_B8467291 
X-CRM114-Status: GOOD (  36.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "david.abdurachmanov@sifive.com" <david.abdurachmanov@sifive.com>,
 "Atish.Patra@wdc.com" <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "aurelien@aurel32.net" <aurelien@aurel32.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMTE6NDkgUE0gQXVlciwgTHVrYXMKPGx1a2FzLmF1ZXJA
YWlzZWMuZnJhdW5ob2Zlci5kZT4gd3JvdGU6Cj4KPiBPbiBXZWQsIDIwMTktMTAtMTYgYXQgMDA6
MjIgKzAyMDAsIEF1cmVsaWVuIEphcm5vIHdyb3RlOgo+ID4gT24gMjAxOS0xMC0xNSAyMTozOCwg
QXVlciwgTHVrYXMgd3JvdGU6Cj4gPiA+IE9uIFRodSwgMjAxOS0xMC0xMCBhdCAyMTo1OCArMDIw
MCwgQXVyZWxpZW4gSmFybm8gd3JvdGU6Cj4gPiA+ID4gT24gMjAxOS0xMC0wOSAwMTozNCwgQXRp
c2ggUGF0cmEgd3JvdGU6Cj4gPiA+ID4gPiBPbiBUdWUsIDIwMTktMTAtMDggYXQgMDg6MzMgKzAy
MDAsIEF1cmVsaWVuIEphcm5vIHdyb3RlOgo+ID4gPiA+ID4gPiBMZSA4IG9jdG9icmUgMjAxOSAw
ODoxNDo1OCBHTVQrMDI6MDAsIERhdmlkIEFiZHVyYWNobWFub3YgPAo+ID4gPiA+ID4gPiBkYXZp
ZC5hYmR1cmFjaG1hbm92QHNpZml2ZS5jb20+IGEgw6ljcml0IDoKPiA+ID4gPiA+ID4gPiBPbiBU
dWUsIE9jdCA4LCAyMDE5IGF0IDc6MzAgQU0gQXVyZWxpZW4gSmFybm8gPGF1cmVsaWVuQGF1cmVs
MzIubmV0Cj4gPiA+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiBPbiAyMDE5LTEwLTA3
IDIyOjE5LCBBdGlzaCBQYXRyYSB3cm90ZToKPiA+ID4gPiA+ID4gPiA+ID4gVGhhbmtzIGZvciB0
aGUgZGV0YWlsZWQgYW5hbHlzaXMuIENhbiB5b3UgcGxlYXNlIGtlZXAgbWUgYW5kCj4gPiA+ID4g
PiA+ID4gPiA+IGRhdmlkCj4gPiA+ID4gPiA+ID4gaW4KPiA+ID4gPiA+ID4gPiA+ID4gY2Mgd2hl
biB5b3UgcmVwb3J0IHRoZSBpc3N1ZSB0byBVLWJvb3QgPwo+ID4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiA+IFllcC4gSSBoYXZlIHByb2dyZXNzZWQgYSBiaXQgb24gdGhhdCwgYW5kIG5vdyBJ
IGFtIG5vdCBjb252aW5jZWQKPiA+ID4gPiA+ID4gPiA+IGl0J3MKPiA+ID4gPiA+ID4gPiBhbgo+
ID4gPiA+ID4gPiA+ID4gVS1ib290IGlzc3VlLCBpdCBjYW4gYmUgYSBHQ0MgaXNzdWUuCj4gPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gSGVyZSBhcmUgdGhlIGNvbmRpdGlvbnMgdG8gcmVw
cm9kdWNlIHRoZSBidWc6Cj4gPiA+ID4gPiA+ID4gPiAtIFUtYm9vdCBydW5zIG9uIGhhcnQgMSwg
MiBvciAzCj4gPiA+ID4gPiA+ID4gPiAtIHRoZSBhdXRvYm9vdCBwcm9jZXNzIGlzIG5vdCBpbnRl
cnJ1cHRlZAo+ID4gPiA+ID4gPiA+ID4gLSBleHRsaW51eCBpcyB1c2VkIHRvIGJvb3QgdGhlIGtl
cm5lbAo+ID4gPiA+ID4gPiA+ID4gLSBhcmNoL3Jpc2N2L2xpYi9ib290bS5jIGlzIGNvbXBpbGVk
IHdpdGggR0NDIDkgKHdvcmtzIGZpbmUgd2l0aAo+ID4gPiA+ID4gPiA+ID4gR0NDCj4gPiA+ID4g
PiA+ID4gOCkKPiA+ID4gPiA+ID4gPiA+IFdoZW4gdGhlIHByb2JsZW0gaGFwcGVucywgdGhlIG1p
c3NpbmcgaGFydCBhY3R1YWxseSBlbmRzIGl0cwo+ID4gPiA+ID4gPiA+IGV4ZWN1dGlvbgo+ID4g
PiA+ID4gPiA+ID4gaW4gYW4gaWxsZWdhbCBpbnN0cnVjdGlvbiB0cmFwIHRyeWluZyB0byBleGVj
dXRlIHRoZSBGRFQgKEkgb25seQo+ID4gPiA+ID4gPiA+IG5vdGljZWQKPiA+ID4gPiA+ID4gPiA+
IHRoYXQgcmVjZW50bHkgYXMgdGhlIG1lc3NhZ2Ugd2FzIGhpZGRlbiBieSB0aGUgdXNlIG9mCj4g
PiA+ID4gPiA+ID4gPiBlYXJseWNvbj1zYmkpOgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
PiA+ID4gU2lGaXZlIEZTQkw6ICAgICAgIDIwMTgtMDMtMjAKPiA+ID4gPiA+ID4gPiA+ID4gSGlG
aXZlLVUgc2VyaWFsICM6IDAwMDAwMjQ2Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiA+IE9wZW5TQkkgdjAuNC01MC1nMzBmMDlmYiAoT2N0ICA2IDIwMTkgMjE6NTg6MDUpCj4gPiA+
ID4gPiA+ID4gPiA+ICAgIF9fX18gICAgICAgICAgICAgICAgICAgIF9fX19fIF9fX18gX19fX18K
PiA+ID4gPiA+ID4gPiA+ID4gICAvIF9fIFwgICAgICAgICAgICAgICAgICAvIF9fX198ICBfIFxf
ICAgX3wKPiA+ID4gPiA+ID4gPiA+ID4gIHwgfCAgfCB8XyBfXyAgIF9fXyBfIF9fIHwgKF9fXyB8
IHxfKSB8fCB8Cj4gPiA+ID4gPiA+ID4gPiA+ICB8IHwgIHwgfCAnXyBcIC8gXyBcICdfIFwgXF9f
XyBcfCAgXyA8IHwgfAo+ID4gPiA+ID4gPiA+ID4gPiAgfCB8X198IHwgfF8pIHwgIF9fLyB8IHwg
fF9fX18pIHwgfF8pIHx8IHxfCj4gPiA+ID4gPiA+ID4gPiA+ICAgXF9fX18vfCAuX18vIFxfX198
X3wgfF98X19fX18vfF9fX18vX19fX198Cj4gPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgfCB8Cj4g
PiA+ID4gPiA+ID4gPiA+ICAgICAgICAgfF98Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gPiA+IFBsYXRmb3JtIE5hbWUgICAgICAgICAgOiBTaUZpdmUgRnJlZWRvbSBVNTQwCj4gPiA+
ID4gPiA+ID4gPiA+IFBsYXRmb3JtIEhBUlQgRmVhdHVyZXMgOiBSVjY0QUNERklNU1UKPiA+ID4g
PiA+ID4gPiA+ID4gUGxhdGZvcm0gTWF4IEhBUlRzICAgICA6IDUKPiA+ID4gPiA+ID4gPiA+ID4g
Q3VycmVudCBIYXJ0ICAgICAgICAgICA6IDIKPiA+ID4gPiA+ID4gPiA+ID4gRmlybXdhcmUgQmFz
ZSAgICAgICAgICA6IDB4ODAwMDAwMDAKPiA+ID4gPiA+ID4gPiA+ID4gRmlybXdhcmUgU2l6ZSAg
ICAgICAgICA6IDEwNCBLQgo+ID4gPiA+ID4gPiA+ID4gPiBSdW50aW1lIFNCSSBWZXJzaW9uICAg
IDogMC4yCj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IFBNUDA6IDB4MDAwMDAw
MDA4MDAwMDAwMC0weDAwMDAwMDAwODAwMWZmZmYgKEEpCj4gPiA+ID4gPiA+ID4gPiA+IFBNUDE6
IDB4MDAwMDAwMDAwMDAwMDAwMC0weDAwMDAwMDdmZmZmZmZmZmYgKEEsUixXLFgpCj4gPiA+ID4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IFUtQm9vdCAyMDE5
LjEwLXJjNC0wMDAzNy1nZGFjNTFlOWFhZi1kaXJ0eSAoT2N0IDA2IDIwMTkgLQo+ID4gPiA+ID4g
PiA+ID4gPiAyMTo1Njo1MQo+ID4gPiA+ID4gPiA+ICswMDAwKQo+ID4gPiA+ID4gPiA+ID4gPiBD
UFU6ICAgcnY2NGltYWZkYwo+ID4gPiA+ID4gPiA+ID4gPiBNb2RlbDogU2lGaXZlIEhpRml2ZSBV
bmxlYXNoZWQgQTAwCj4gPiA+ID4gPiA+ID4gPiA+IERSQU06ICA4IEdpQgo+ID4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiBNTUM6ICAgc3BpQDEwMDUwMDAwOm1tY0AwOiAwCj4gPiA+
ID4gPiA+ID4gPiA+IEluOiAgICBzZXJpYWxAMTAwMTAwMDAKPiA+ID4gPiA+ID4gPiA+ID4gT3V0
OiAgIHNlcmlhbEAxMDAxMDAwMAo+ID4gPiA+ID4gPiA+ID4gPiBFcnI6ICAgc2VyaWFsQDEwMDEw
MDAwCj4gPiA+ID4gPiA+ID4gPiA+IE5ldDogICBldGgwOiBldGhlcm5ldEAxMDA5MDAwMAo+ID4g
PiA+ID4gPiA+ID4gPiBIaXQgYW55IGtleSB0byBzdG9wIGF1dG9ib290OiAgMAo+ID4gPiA+ID4g
PiA+ID4gPiBzd2l0Y2ggdG8gcGFydGl0aW9ucyAjMCwgT0sKPiA+ID4gPiA+ID4gPiA+ID4gbW1j
MCBpcyBjdXJyZW50IGRldmljZQo+ID4gPiA+ID4gPiA+ID4gPiBTY2FubmluZyBtbWMgMDoyLi4u
Cj4gPiA+ID4gPiA+ID4gPiA+IEZvdW5kIC9ib290L2V4dGxpbnV4L2V4dGxpbnV4LmNvbmYKPiA+
ID4gPiA+ID4gPiA+ID4gUmV0cmlldmluZyBmaWxlOiAvYm9vdC9leHRsaW51eC9leHRsaW51eC5j
b25mCj4gPiA+ID4gPiA+ID4gPiA+IDUxMCBieXRlcyByZWFkIGluIDUgbXMgKDk5LjYgS2lCL3Mp
Cj4gPiA+ID4gPiA+ID4gPiA+IFUtQm9vdCBtZW51Cj4gPiA+ID4gPiA+ID4gPiA+IDE6ICAgICAg
a2VybmVsIDUuMy40Cj4gPiA+ID4gPiA+ID4gPiA+IDI6ICAgICAgRGViaWFuIEdOVS9MaW51eCBr
ZXJuZWwgNS4zLjAtdHJ1bmstcmlzY3Y2NAo+ID4gPiA+ID4gPiA+ID4gPiBFbnRlciBjaG9pY2U6
IDEKPiA+ID4gPiA+ID4gPiA+ID4gMTogICAgICBrZXJuZWwgNS4zLjQKPiA+ID4gPiA+ID4gPiA+
ID4gUmV0cmlldmluZyBmaWxlOiAvYm9vdC92bWxpbnV4LTUuMy40Cj4gPiA+ID4gPiA+ID4gPiA+
IDk0ODYwNzYgYnl0ZXMgcmVhZCBpbiA0ODEzIG1zICgxLjkgTWlCL3MpCj4gPiA+ID4gPiA+ID4g
PiA+IGFwcGVuZDogcm9vdD0vZGV2L21tY2JsazBwMiBydyBjb25zb2xlPXR0eVNJRjAgcm9vdHdh
aXQKPiA+ID4gPiA+ID4gPiA+ID4gUmV0cmlldmluZyBmaWxlOiAvYm9vdC9oaWZpdmUtdW5sZWFz
aGVkLWEwMC5kdGIKPiA+ID4gPiA+ID4gPiA+ID4gNjA4OCBieXRlcyByZWFkIGluIDcgbXMgKDg0
OC42IEtpQi9zKQo+ID4gPiA+ID4gPiA+ID4gPiAjIyBGbGF0dGVuZWQgRGV2aWNlIFRyZWUgYmxv
YiBhdCA4ODAwMDAwMAo+ID4gPiA+ID4gPiA+ID4gPiAgICBCb290aW5nIHVzaW5nIHRoZSBmZHQg
YmxvYiBhdCAweDg4MDAwMDAwCj4gPiA+ID4gPiA+ID4gPiA+ICAgIFVzaW5nIERldmljZSBUcmVl
IGluIHBsYWNlIGF0IDAwMDAwMDAwODgwMDAwMDAsIGVuZAo+ID4gPiA+ID4gPiA+IDAwMDAwMDAw
ODgwMDQ3YzcKPiA+ID4gPiA+ID4gPiA+ID4gU3RhcnRpbmcga2VybmVsIC4uLgo+ID4gPiA+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiBleGNlcHRpb24gY29kZTogMiAsIElsbGVnYWwgaW5z
dHJ1Y3Rpb24gLCBlcGMgICwgcmEgODgwMDAwMDQKPiA+ID4gPiA+ID4gPiA4ODAwMDAwMAo+ID4g
PiA+ID4gPiA+ID4gPiAjIyMgRVJST1IgIyMjIFBsZWFzZSBSRVNFVCB0aGUgYm9hcmQgIyMjCj4g
PiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJIHRoaW5rLCB0aGF0J3MgdGhlIHNhbWUgaXNzdWUg
SSBoYWQgKG9yIHN0aWxsIGhhdmUpIGEgd2VlayBhZ28uCj4gPiA+ID4gPiA+ID4gSnVzdCByZW1p
bmRlciB0aGF0IGtlcm5lbCA1LjMgaW50cm9kdWNlZCBhIDY0LWJ5dGUgaGVhZGVyICh0aHVzIG5v
Cj4gPiA+ID4gPiA+ID4gbmVlZCB0byB3cmFwIGtlcm5lbCkgYXQgbGVhc3QgZm9yIEltYWdlIHRh
cmdldC4gVGh1cyBpdCdzIGJvb3RpCj4gPiA+ID4gPiA+ID4gdGhhdAo+ID4gPiA+ID4gPiA+IGJv
b3RzIHRoZSBrZXJuZWwgb24gVS1Cb290IHNpZGUuCj4gPiA+ID4gPiA+ID4gVGh1cyB0aGUgMXN0
IGluc3RydWN0aW9uIG9mIHRoYXQgaGVhZGVyIGlzICJqIDB4NDAiICh0byB0aGUKPiA+ID4gPiA+
ID4gPiBiZWdpbm5pbmcKPiA+ID4gPiA+ID4gPiBvZiB0aGUgYWN0dWFsIGtlcm5lbCkuICBBbmQg
ODgwMDAwMDQgd291bGQgZGVmaW5pdGVseSBob2xkIGFuCj4gPiA+ID4gPiA+ID4gaWxsZWdhbAo+
ID4gPiA+ID4gPiA+IGluc3RydWN0aW9uLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gMDAw
MDAwMDAwMDAwMDAwMCA8LmRhdGE+Ogo+ID4gPiA+ID4gPiA+IDA6ICAgICAgIDgxYTAgICAgICAg
ICAgICAgICAgICAgIGogICAgICAgMHg0MAo+ID4gPiA+ID4gPiA+IDI6ICAgICAgIDAwMDAgICAg
ICAgICAgICAgICAgICAgIHVuaW1wCj4gPiA+ID4gPiA+ID4gNDogICAgICAgMDAwMCAgICAgICAg
ICAgICAgICAgICAgdW5pbXAKPiA+ID4gPiA+ID4gPiA2OiAgICAgICAwMTAwICAgICAgICAgICAg
ICAgICAgICBub3AKPiA+ID4gPiA+ID4gPiBbLi5dCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEht
bSB0aGF0J3MgdGhlIGJlZ2lubmluZyBvZiB0aGUga2VybmVsIGNvZGUuIFRoZSBhZGRyZXNzIDg4
MDAwMDA0Cj4gPiA+ID4gPiA+IGFjdHVhbGx5IGNvcnJlc3BvbmRzIHRvIHRoZSBGRFQuIFNvIHRo
ZSBoYXJ0IGVuZGluZyB1cCBpbiBhIHRyYXAKPiA+ID4gPiA+ID4gYWN0dWFsbHkgdHJpZXMgdG8g
Ym9vdCB0aGUgRkRUIGluc3RlYWQgb2YgdGhlIGtlcm5lbC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+
Cj4gPiA+ID4gPiBEbyB5b3Ugc2VlIHRoZSBpc3N1ZSBpZiB5b3UgbWFudWFsbHkgdXNlIGJvb3Rt
IGluc3RlYWQgb2YgZXh0bGludXg/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gPT4gYm9vdG0gJGtlcm5l
bF9hZGRyX3IgLSAkZmR0X2FkZHJfcgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoaXMgaXMgYSBwcm9i
YWJseSBub3QgcmVsYXRlZCBhcyBib290bSBpcyBqdW1waW5nIHRvIHdyb25nIGxvY2F0aW9uCj4g
PiA+ID4gPiBmb3Igc29tZSByZWFzb24uIEhvd2V2ZXIsIGl0IG1heSBiZSB3b3J0aCBhIHNob3Qg
YXMgaXQgZml4ZXMgZmR0Cj4gPiA+ID4gPiBjb3JydXB0aW9uLgo+ID4gPiA+Cj4gPiA+ID4gSSBo
YXZlIGp1c3QgdGVzdGVkLCBhbmQgaXQgZG9lc24ndCB3b3JrLiBPbiB0aGUgb3RoZXIgaGFuZCBJ
IGhhdmUgdHJ5IHRvCj4gPiA+ID4gcnVuIHRoYXQgbWFudWFsbHksIGFuZCBpbnRlcnJ1cHRpbmcg
dGhlIGJvb3QgcHJvY2VzcyB1c3VhbGx5IGhpZGVzIHRoZQo+ID4gPiA+IHByb2JsZW0uCj4gPiA+
ID4KPiA+ID4KPiA+ID4gSSB0cmllZCB0byByZXByb2R1Y2UgdGhlIGlzc3VlIHRvZGF5LCBidXQg
d2FzIG5vdCBhYmxlIHRvLiBJZiB5b3UgY2FuCj4gPiA+IHVwbG9hZCB0aGUgcmVsZXZhbnQgZmls
ZXMgc29tZXdoZXJlLCBJIGNhbiByZXRyeSBpdCB3aXRoIHRoZW0uIEkgaGF2ZQo+ID4gPiBhbHNv
IGFkZGVkIGluZm9ybWF0aW9uIG9uIHRoZSBib290IGZsb3cgaW4gVS1Cb290IGJlbG93IGluIGhv
cGVzIHRoYXQKPiA+ID4gaXQgaXMgaGVscGZ1bCBmb3IgZGVidWdnaW5nLgo+ID4KPiA+IFlvdSBj
YW4gZmluZCB0aGUgZmlsZXMgdGhlcmU6Cj4gPiBodHRwczovL3RlbXAuYXVyZWwzMi5uZXQvaGlm
aXZlLW9wZW5zYmktdWJvb3QvCj4gPgo+ID4gZndfcGF5bG9hZC5iaW4gY29udGFpbnMgdGhlIE9w
ZW5TQkkgKyBVLUJvb3QgcGF5bG9hZCB0byBiZSBjb3BpZWQgdG8gdGhlCj4gPiBmaXJzdCBwYXJ0
aXRpb24gb2YgdGhlIFNEIGNhcmQuIFRoZSBib290LnRhci5neiBjb250YWlucyB0aGUgL2Jvb3QK
PiA+IGRpcmVjdG9yeSAoa2VybmVsLCBmZHQgYW5kIGV4dGxpbnV4LmNvbmYpIGFuZCBoYXMgdG8g
YmUgcHV0IG9uIHRoZQo+ID4gc2Vjb25kIHBhcnRpdGlvbiBvZiB0aGUgU0QgY2FyZC4gTm90ZSB0
aGF0IHRoaXMgcGFydGl0aW9uIHNob3VsZCBoYXZlCj4gPiB0aGUgR1BUIGJvb3QgZmxhZyBlbmFi
bGVkIGZvciBleHRsaW51eCB0byB3b3JrLgo+ID4KPiA+IEkgaGF2ZW4ndCBsb29rZWQgbW9yZSBh
dCB0aGUgaXNzdWUgcmVjZW50bHkgbm93IHRoYXQgSSBoYXZlIGZvdW5kIHRoYXQKPiA+IHVzaW5n
IEdDQyA4IGlzIGEgZml4L3dvcmthcm91bmQuIFRoZXJlZm9yZSB0aG9zZSBmaWxlcyBhcmUgZnJv
bSB+MTAgZGF5cwo+ID4gYWdvLiBJIHdpbGwgdHJ5IHRvIGRvIG1vcmUgdGVzdHMgZHVyaW5nIHRo
ZSB3ZWVrLWVuZC4KPiA+Cj4KPiBUaGFua3MgZm9yIHRoZSBmaWxlcywgSSB3YXMgYWJsZSB0byBy
ZXByb2R1Y2UgdGhlIGlzc3VlIG5vdy4gU2VlbXMgbGlrZQo+IGl0IGlzIGNhdXNlZCBieSBhIHN0
YWNrIG92ZXJmbG93LiBXaGVuIHNtcF9jYWxsX2Z1bmN0aW9uKCkgaXMgY2FsbGVkCj4gZHVyaW5n
IGJvb3RtLCB0aGUgc3RhY2sgb2YgdGhlIG1haW4gaGFydCBvdmVyZmxvd3MgaW50byB0aGUgc3Rh
Y2sgb2YKPiBvbmUgb2YgdGhlIG90aGVyIGhhcnRzLiBUaGUgcmV0dXJuIGFkZHJlc3Mgb2YgdGhl
IG1haW4gaGFydCBub3cgbGllcwo+IHdpdGhpbiB0aGUgc3RhY2sgb2YgdGhlIG90aGVyIGhhcnQu
IE9uY2UgdGhhdCBoYXJ0IGdldHMgd29rZW4gYnkgdGhlCj4gSVBJIGl0IG92ZXJ3cml0ZXMgdGhl
IHJldHVybiBhZGRyZXNzLCBpbiBvdXIgY2FzZSB3aXRoIDB4ODgwMDAwMDAuIFRoaXMKPiB3aWxs
IGNhdXNlIHRoZSBpbGxlZ2FsIGluc3RydWN0aW9uIHRyYXAgb25jZSB0aGUgbWFpbiBoYXJ0IHJl
dHVybnMuCj4gVGhpcyBhbHNvIGV4cGxhaW5zLCB3aHkgdGhlIHByb2JsZW0gZG9lcyBub3Qgb2Nj
dXIgd2hlbiB0aGUgbWFpbiBoYXJ0Cj4gaXMgaGFydCA0LCBzaW5jZSBpdHMgc3RhY2sgaXMgYXQg
dGhlIGJvdHRvbSBhbmQgdGhlcmVmb3JlIGNhbid0Cj4gb3ZlcmZsb3cgaW50byBvbmUgb2YgdGhl
IG90aGVyIHN0YWNrcy4KPgo+IEluY3JlYXNpbmcgdGhlIHN0YWNrIHNpemUgKENPTkZJR19TVEFD
S19TSVpFX1NISUZUKSB0byAxNCBmaXhlcyB0aGUKPiBwcm9ibGVtLiBJJ2xsIGRvdWJsZSBjaGVj
ayB0aGF0IHRoZXJlJ3Mgbm90aGluZyBlbHNlIGNhdXNpbmcgYW4gaXNzdWUKPiBhbmQgd2lsbCB0
aGVuIHNlbmQgYSBwYXRjaCB0byBpbmNyZWFzZSB0aGUgc3RhY2sgc2l6ZS4KCk15IEZlZG9yYS9S
SVNDViBidWlsZCBmcm9tIHllc3RlcmRheSBhbHNvIHByb2R1Y2VkIGEgbG90IG9mIGlsbGVnYWwK
aW5zdHJ1Y3Rpb24gYXQgMHg4ODAwMDAwMCBjcmFzaGVzLiBJIGJ1bXBlZCBDT05GSUdfU1RBQ0tf
U0laRV9TSElGVCB0bwoxNCBhbmQgYm9vdGVkIHRoZSBib2FyZCB+MjAgdGltZXMgd2l0aG91dCB0
aGUgaXNzdWUgdG9kYXkuIFRodXMgeW91CmNhbiBhZGQ6CgpUZXN0ZWQtYnk6IERhdmlkIEFiZHVy
YWNobWFub3YgPGRhdmlkLmFiZHVyYWNobWFub3ZAc2lmaXZlLmNvbT4KCj4KPiBSZWdhcmRzLAo+
IEx1a2FzCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKPiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
aXNjdgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
