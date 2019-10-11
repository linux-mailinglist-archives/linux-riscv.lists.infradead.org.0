Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6993D424F
	for <lists+linux-riscv@lfdr.de>; Fri, 11 Oct 2019 16:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYCB1hI+Y9a4Ky5Ia4WVxHgX/9nJcLnT6UjnUyCFXWg=; b=Ut3d8hZ7u/zcxG
	uzm3zUVxMgQPGY9+fzrYaXuwWDOtnt+jUOa/pvR/YBL8R7ROjVPfCAar86HTySMz4aViTtP6tDJdl
	3yXnFuPSye0cqeZmAJOp4Tb+CHxOIPVgsA9ka2Naxkbrt+yHDdGhWdMA0MX/y0UdneYioQB9pL8cJ
	2AVFWTiFFL2VF8c23105dvmr0v4ZA/yoX81IUzZ8HDnoK7NyhKkQzFQRys4h/g9RWk2VBFjyjz4gg
	CvnuEInGMcBxxx4IT4xjqDfGImTuIVXk34j0uB7+fYYHGEuGNlo2Ww1FrUljArKExzVrcQQ0H51AF
	F3dleVIF+SARFmqgzucA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvZk-0004oa-7g; Fri, 11 Oct 2019 14:07:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvYU-0003au-R4
 for linux-riscv@lists.infradead.org; Fri, 11 Oct 2019 14:06:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id 7so10578923wme.1
 for <linux-riscv@lists.infradead.org>; Fri, 11 Oct 2019 07:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6A4Ty+hTgt1cnG4WE612XDh/a+kUSxY2uKjOpwzD2ns=;
 b=nDQhinyqoOYzpx/QxBbZHZZg1EqBNCYnSfl7M1SiVFQv3e4bQaqzfInYmOA2m/XEr/
 YWN9SA8vqAA4aGf1TI3FOttE4yFOxQ4nBAa71Zq/Iw4f+pyGnY/T2nRjiExTH2K1PYo5
 7Tg6eMPyAR1nBu6Iev12Bgp2jONhkwbzvEXxldoAPxJbuwXmKlVLhRKn7spo0d3kKO6D
 D7EaGKc9kbYhtbrauQfk64AlQ9GZmbVRDsB5B6FN7UJTyh7xk9NnJZ+GZL6FYzQtPR8V
 HVThJ/dXUzX5tjOkKymHuTnb0aYWKgm+v0Rx0ZYoSvsC14bdZV8jqiM4Ms2K7PEuME6O
 cFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6A4Ty+hTgt1cnG4WE612XDh/a+kUSxY2uKjOpwzD2ns=;
 b=uDYUvZy9I3Ja3mnyIjsJFebWF3V0iLrowZ2b3SKikBPkLD5DeTW0FJbgXiR9Zpb7VQ
 tfCpxRxRt/9UvaofVwa+oBTgbwfxHKWj4mcHqJ0IxWqVmOOexFdUhUwLQrAiikwLiUNp
 Err1JhF5vY6mCM0UaebFWDLhdbXNKy1MSZZzCjGtfVHpsAyw/xlDtaqMk4VWSlY6Bdxs
 +kRBERxA0lW4kS4PxF2XpXRV2VcfgbuRT5+9+6T07jA/J9IWY0VEf32vPralDivi9jar
 72yH1z7H59moP7jHOb9MMlKHa9htMzNvDqAit6e4p9w8/bcEzRv3mznX4V4Vcc9QBgD3
 f8RA==
X-Gm-Message-State: APjAAAW3esdA/2fAbm0FTC7yhn2HUxCua7qmRufn/Rod3jXJpZs5g7Bl
 grwxQMYM5dEL+t3/kSOFd24vkY56fYxujAEqDjCuCg==
X-Google-Smtp-Source: APXvYqz7nQBbQDL5d9A8ejWGnyfuMelJ2/TLDMhBYW2a4u4P9+kvMssYrT+634np2as6WUbqi0qQhdKFyBzG7omwl6o=
X-Received: by 2002:a1c:5946:: with SMTP id n67mr3578311wmb.93.1570802764582; 
 Fri, 11 Oct 2019 07:06:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191003200735.GA26760@aurel32.net>
 <73a9ba9fd6c29075209a61660137fb4b899f7ff2.camel@wdc.com>
 <20191005102541.GA22188@aurel32.net> <20191006122850.GA31831@aurel32.net>
 <71c93a62192eb4259ba7e868f7f9aa8ae066c6ad.camel@wdc.com>
 <20191008043014.GA23380@aurel32.net>
 <CAPSAq_znsoOrLsA_rPbmq=e2syZA9MA=-oaZbda5KRiZGG9yyg@mail.gmail.com>
 <97CDD0F9-32F9-4C14-8211-63454C5C379A@aurel32.net>
 <E7098422-DFF2-4366-B97A-6D86E0202595@sifive.com>
 <20191010195953.GB10676@aurel32.net>
In-Reply-To: <20191010195953.GB10676@aurel32.net>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Fri, 11 Oct 2019 17:05:28 +0300
Message-ID: <CAEn-LTptMxLHdUy3Qw4e-HS0sLs0zq+cWh_+gao=dgef+oAYwg@mail.gmail.com>
Subject: Re: Fail to bring hart online on HiFive Unleashed
To: Aurelien Jarno <aurelien@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070606_940650_7FCE556D 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMTE6MDAgUE0gQXVyZWxpZW4gSmFybm8gPGF1cmVsaWVu
QGF1cmVsMzIubmV0PiB3cm90ZToKPgo+IE9uIDIwMTktMTAtMDggMTc6MjEsIFRyb3kgQmVuamVn
ZXJkZXMgd3JvdGU6Cj4gPgo+ID4KPiA+ID4gT24gT2N0IDgsIDIwMTksIGF0IDE6MzMgQU0sIEF1
cmVsaWVuIEphcm5vIDxhdXJlbGllbkBhdXJlbDMyLm5ldD4gd3JvdGU6Cj4gPiA+Cj4gPiA+IExl
IDggb2N0b2JyZSAyMDE5IDA4OjE0OjU4IEdNVCswMjowMCwgRGF2aWQgQWJkdXJhY2htYW5vdiA8
ZGF2aWQuYWJkdXJhY2htYW5vdkBzaWZpdmUuY29tPiBhIMOpY3JpdCA6Cj4gPiA+PiBPbiBUdWUs
IE9jdCA4LCAyMDE5IGF0IDc6MzAgQU0gQXVyZWxpZW4gSmFybm8gPGF1cmVsaWVuQGF1cmVsMzIu
bmV0Pgo+ID4gPj4gd3JvdGU6Cj4gPiA+Pj4KPiA+ID4+PiBPbiAyMDE5LTEwLTA3IDIyOjE5LCBB
dGlzaCBQYXRyYSB3cm90ZToKPiA+ID4+Pj4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgYW5hbHlz
aXMuIENhbiB5b3UgcGxlYXNlIGtlZXAgbWUgYW5kIGRhdmlkCj4gPiA+PiBpbgo+ID4gPj4+PiBj
YyB3aGVuIHlvdSByZXBvcnQgdGhlIGlzc3VlIHRvIFUtYm9vdCA/Cj4gPiA+Pj4KPiA+ID4+PiBZ
ZXAuIEkgaGF2ZSBwcm9ncmVzc2VkIGEgYml0IG9uIHRoYXQsIGFuZCBub3cgSSBhbSBub3QgY29u
dmluY2VkIGl0J3MKPiA+ID4+IGFuCj4gPiA+Pj4gVS1ib290IGlzc3VlLCBpdCBjYW4gYmUgYSBH
Q0MgaXNzdWUuCj4gPiA+Pj4KPiA+ID4+PiBIZXJlIGFyZSB0aGUgY29uZGl0aW9ucyB0byByZXBy
b2R1Y2UgdGhlIGJ1ZzoKPiA+ID4+PiAtIFUtYm9vdCBydW5zIG9uIGhhcnQgMSwgMiBvciAzCj4g
PiA+Pj4gLSB0aGUgYXV0b2Jvb3QgcHJvY2VzcyBpcyBub3QgaW50ZXJydXB0ZWQKPiA+ID4+PiAt
IGV4dGxpbnV4IGlzIHVzZWQgdG8gYm9vdCB0aGUga2VybmVsCj4gPiA+Pj4gLSBhcmNoL3Jpc2N2
L2xpYi9ib290bS5jIGlzIGNvbXBpbGVkIHdpdGggR0NDIDkgKHdvcmtzIGZpbmUgd2l0aCBHQ0MK
PiA+ID4+IDgpCj4gPiA+Pj4KPiA+ID4+PiBXaGVuIHRoZSBwcm9ibGVtIGhhcHBlbnMsIHRoZSBt
aXNzaW5nIGhhcnQgYWN0dWFsbHkgZW5kcyBpdHMKPiA+ID4+IGV4ZWN1dGlvbgo+ID4gPj4+IGlu
IGFuIGlsbGVnYWwgaW5zdHJ1Y3Rpb24gdHJhcCB0cnlpbmcgdG8gZXhlY3V0ZSB0aGUgRkRUIChJ
IG9ubHkKPiA+ID4+IG5vdGljZWQKPiA+ID4+PiB0aGF0IHJlY2VudGx5IGFzIHRoZSBtZXNzYWdl
IHdhcyBoaWRkZW4gYnkgdGhlIHVzZSBvZiBlYXJseWNvbj1zYmkpOgo+ID4gPj4+Cj4gPiA+Pj4g
fCBTaUZpdmUgRlNCTDogICAgICAgMjAxOC0wMy0yMAo+ID4gPj4+IHwgSGlGaXZlLVUgc2VyaWFs
ICM6IDAwMDAwMjQ2Cj4gPiA+Pj4gfAo+ID4gPj4+IHwgT3BlblNCSSB2MC40LTUwLWczMGYwOWZi
IChPY3QgIDYgMjAxOSAyMTo1ODowNSkKPiA+ID4+PiB8ICAgIF9fX18gICAgICAgICAgICAgICAg
ICAgIF9fX19fIF9fX18gX19fX18KPiA+ID4+PiB8ICAgLyBfXyBcICAgICAgICAgICAgICAgICAg
LyBfX19ffCAgXyBcXyAgIF98Cj4gPiA+Pj4gfCAgfCB8ICB8IHxfIF9fICAgX19fIF8gX18gfCAo
X19fIHwgfF8pIHx8IHwKPiA+ID4+PiB8ICB8IHwgIHwgfCAnXyBcIC8gXyBcICdfIFwgXF9fXyBc
fCAgXyA8IHwgfAo+ID4gPj4+IHwgIHwgfF9ffCB8IHxfKSB8ICBfXy8gfCB8IHxfX19fKSB8IHxf
KSB8fCB8Xwo+ID4gPj4+IHwgICBcX19fXy98IC5fXy8gXF9fX3xffCB8X3xfX19fXy98X19fXy9f
X19fX3wKPiA+ID4+PiB8ICAgICAgICAgfCB8Cj4gPiA+Pj4gfCAgICAgICAgIHxffAo+ID4gPj4+
IHwKPiA+ID4+PiB8IFBsYXRmb3JtIE5hbWUgICAgICAgICAgOiBTaUZpdmUgRnJlZWRvbSBVNTQw
Cj4gPiA+Pj4gfCBQbGF0Zm9ybSBIQVJUIEZlYXR1cmVzIDogUlY2NEFDREZJTVNVCj4gPiA+Pj4g
fCBQbGF0Zm9ybSBNYXggSEFSVHMgICAgIDogNQo+ID4gPj4+IHwgQ3VycmVudCBIYXJ0ICAgICAg
ICAgICA6IDIKPiA+ID4+PiB8IEZpcm13YXJlIEJhc2UgICAgICAgICAgOiAweDgwMDAwMDAwCj4g
PiA+Pj4gfCBGaXJtd2FyZSBTaXplICAgICAgICAgIDogMTA0IEtCCj4gPiA+Pj4gfCBSdW50aW1l
IFNCSSBWZXJzaW9uICAgIDogMC4yCj4gPiA+Pj4gfAo+ID4gPj4+IHwgUE1QMDogMHgwMDAwMDAw
MDgwMDAwMDAwLTB4MDAwMDAwMDA4MDAxZmZmZiAoQSkKPiA+ID4+PiB8IFBNUDE6IDB4MDAwMDAw
MDAwMDAwMDAwMC0weDAwMDAwMDdmZmZmZmZmZmYgKEEsUixXLFgpCj4gPiA+Pj4gfAo+ID4gPj4+
IHwKPiA+ID4+PiB8IFUtQm9vdCAyMDE5LjEwLXJjNC0wMDAzNy1nZGFjNTFlOWFhZi1kaXJ0eSAo
T2N0IDA2IDIwMTkgLSAyMTo1Njo1MQo+ID4gPj4gKzAwMDApCj4gPiA+Pj4gfAo+ID4gPj4+IHwg
Q1BVOiAgIHJ2NjRpbWFmZGMKPiA+ID4+PiB8IE1vZGVsOiBTaUZpdmUgSGlGaXZlIFVubGVhc2hl
ZCBBMDAKPiA+ID4+PiB8IERSQU06ICA4IEdpQgo+ID4gPj4+IHwKPiA+ID4+PiB8IE1NQzogICBz
cGlAMTAwNTAwMDA6bW1jQDA6IDAKPiA+ID4+PiB8IEluOiAgICBzZXJpYWxAMTAwMTAwMDAKPiA+
ID4+PiB8IE91dDogICBzZXJpYWxAMTAwMTAwMDAKPiA+ID4+PiB8IEVycjogICBzZXJpYWxAMTAw
MTAwMDAKPiA+ID4+PiB8IE5ldDogICBldGgwOiBldGhlcm5ldEAxMDA5MDAwMAo+ID4gPj4+IHwg
SGl0IGFueSBrZXkgdG8gc3RvcCBhdXRvYm9vdDogIDAKPiA+ID4+PiB8IHN3aXRjaCB0byBwYXJ0
aXRpb25zICMwLCBPSwo+ID4gPj4+IHwgbW1jMCBpcyBjdXJyZW50IGRldmljZQo+ID4gPj4+IHwg
U2Nhbm5pbmcgbW1jIDA6Mi4uLgo+ID4gPj4+IHwgRm91bmQgL2Jvb3QvZXh0bGludXgvZXh0bGlu
dXguY29uZgo+ID4gPj4+IHwgUmV0cmlldmluZyBmaWxlOiAvYm9vdC9leHRsaW51eC9leHRsaW51
eC5jb25mCj4gPiA+Pj4gfCA1MTAgYnl0ZXMgcmVhZCBpbiA1IG1zICg5OS42IEtpQi9zKQo+ID4g
Pj4+IHwgVS1Cb290IG1lbnUKPiA+ID4+PiB8IDE6ICAgICAga2VybmVsIDUuMy40Cj4gPiA+Pj4g
fCAyOiAgICAgIERlYmlhbiBHTlUvTGludXgga2VybmVsIDUuMy4wLXRydW5rLXJpc2N2NjQKPiA+
ID4+PiB8IEVudGVyIGNob2ljZTogMQo+ID4gPj4+IHwgMTogICAgICBrZXJuZWwgNS4zLjQKPiA+
ID4+PiB8IFJldHJpZXZpbmcgZmlsZTogL2Jvb3Qvdm1saW51eC01LjMuNAo+ID4gPj4+IHwgOTQ4
NjA3NiBieXRlcyByZWFkIGluIDQ4MTMgbXMgKDEuOSBNaUIvcykKPiA+ID4+PiB8IGFwcGVuZDog
cm9vdD0vZGV2L21tY2JsazBwMiBydyBjb25zb2xlPXR0eVNJRjAgcm9vdHdhaXQKPiA+ID4+PiB8
IFJldHJpZXZpbmcgZmlsZTogL2Jvb3QvaGlmaXZlLXVubGVhc2hlZC1hMDAuZHRiCj4gPiA+Pj4g
fCA2MDg4IGJ5dGVzIHJlYWQgaW4gNyBtcyAoODQ4LjYgS2lCL3MpCj4gPiA+Pj4gfCAjIyBGbGF0
dGVuZWQgRGV2aWNlIFRyZWUgYmxvYiBhdCA4ODAwMDAwMAo+ID4gPj4+IHwgICAgQm9vdGluZyB1
c2luZyB0aGUgZmR0IGJsb2IgYXQgMHg4ODAwMDAwMAo+ID4gPj4+IHwgICAgVXNpbmcgRGV2aWNl
IFRyZWUgaW4gcGxhY2UgYXQgMDAwMDAwMDA4ODAwMDAwMCwgZW5kCj4gPiA+PiAwMDAwMDAwMDg4
MDA0N2M3Cj4gPiA+Pj4gfAo+ID4gPj4+IHwgU3RhcnRpbmcga2VybmVsIC4uLgo+ID4gPj4+IHwK
PiA+ID4+PiB8IGV4Y2VwdGlvbiBjb2RlOiAyICwgSWxsZWdhbCBpbnN0cnVjdGlvbiAsIGVwYyAg
LCByYSA4ODAwMDAwNAo+ID4gPj4gODgwMDAwMDAKPiA+ID4+PiB8ICMjIyBFUlJPUiAjIyMgUGxl
YXNlIFJFU0VUIHRoZSBib2FyZCAjIyMKPiA+ID4+Cj4gPiA+PiBJIHRoaW5rLCB0aGF0J3MgdGhl
IHNhbWUgaXNzdWUgSSBoYWQgKG9yIHN0aWxsIGhhdmUpIGEgd2VlayBhZ28uCj4gPiA+PiBKdXN0
IHJlbWluZGVyIHRoYXQga2VybmVsIDUuMyBpbnRyb2R1Y2VkIGEgNjQtYnl0ZSBoZWFkZXIgKHRo
dXMgbm8KPiA+ID4+IG5lZWQgdG8gd3JhcCBrZXJuZWwpIGF0IGxlYXN0IGZvciBJbWFnZSB0YXJn
ZXQuIFRodXMgaXQncyBib290aSB0aGF0Cj4gPiA+PiBib290cyB0aGUga2VybmVsIG9uIFUtQm9v
dCBzaWRlLgo+ID4gPj4gVGh1cyB0aGUgMXN0IGluc3RydWN0aW9uIG9mIHRoYXQgaGVhZGVyIGlz
ICJqIDB4NDAiICh0byB0aGUgYmVnaW5uaW5nCj4gPiA+PiBvZiB0aGUgYWN0dWFsIGtlcm5lbCku
ICBBbmQgODgwMDAwMDQgd291bGQgZGVmaW5pdGVseSBob2xkIGFuIGlsbGVnYWwKPiA+ID4+IGlu
c3RydWN0aW9uLgo+ID4gPj4KPiA+ID4+IDAwMDAwMDAwMDAwMDAwMDAgPC5kYXRhPjoKPiA+ID4+
IDA6ICAgICAgIDgxYTAgICAgICAgICAgICAgICAgICAgIGogICAgICAgMHg0MAo+ID4gPj4gMjog
ICAgICAgMDAwMCAgICAgICAgICAgICAgICAgICAgdW5pbXAKPiA+ID4+IDQ6ICAgICAgIDAwMDAg
ICAgICAgICAgICAgICAgICAgIHVuaW1wCj4gPiA+PiA2OiAgICAgICAwMTAwICAgICAgICAgICAg
ICAgICAgICBub3AKPiA+ID4+IFsuLl0KPiA+ID4KPiA+ID4gSG1tIHRoYXQncyB0aGUgYmVnaW5u
aW5nIG9mIHRoZSBrZXJuZWwgY29kZS4gVGhlIGFkZHJlc3MgODgwMDAwMDQKPiA+ID4gYWN0dWFs
bHkgY29ycmVzcG9uZHMgdG8gdGhlIEZEVC4gU28gdGhlIGhhcnQgZW5kaW5nIHVwIGluIGEgdHJh
cAo+ID4gPiBhY3R1YWxseSB0cmllcyB0byBib290IHRoZSBGRFQgaW5zdGVhZCBvZiB0aGUga2Vy
bmVsLgo+ID4gPgo+ID4gPiBJIGhhdmVuJ3Qgc3BvdHRlZCBhbnkgb2J2aW91cyBkaWZmZXJlbmNl
cyBiZXR3ZWVuIGJvb3RtLm8gY29tcGlsZWQgd2l0aAo+ID4gPiBHQ0MgOCBhbmQgR0NDIDkuIEkg
d29uZGVyIGlmIHRoZXJlIGlzIHNvbWVob3cgYSByYWNlIGNvbmRpdGlvbiBiZWNhdXNlCj4gPiA+
IHNvbWUgaGFydHMgYXJlIGFscmVhZHkgZXhlY3V0aW5nIGxpbnV4IHdoaWxlIHRoZSBsYXN0IG9u
ZSBpcyBzdGlsbAo+ID4gPiBleGVjdXRpbmcgVS1ib290Lgo+ID4KPiA+IFRoaXMgaXMgZnJvbSBv
dXIgR0NDIG1haW50YWluZXIsIEppbSBXaWxzb246Cj4gPgo+ID4gQnV0IHdlJ3ZlIGZpeGVkIDMg
Y29tYmluZSBvcHRpbWl6YXRpb24gYnVncyBvbiB0aGUgZ2NjLTkgYnJhbmNoCj4gPiByZWNlbnRs
eSwgYW5kIEkndmUgZ290IGEgZm91cnRoIG9uZSB0aGF0IEknbSB3b3JraW5nIG9uIG5vdywgc28g
dGhlcmUKPiA+IGlzIGEgZ29vZCBjaGFuY2UgdGhhdCB0aGlzIGlzIGEga25vd24gYW5kIGFscmVh
ZHkgZml4ZWQgcHJvYmxlbS4KPgo+IEkgaGF2ZSBqdXN0IHRyaWVkIHdpdGggdGhlIGdjYy05IGJy
YW5jaCBmcm9tIDIgZGF5cyBhZ28gKHdpdGggUFIKPiB0YXJnZXQvOTE2MzUgZml4ZWQpIGFuZCB0
aGUgcHJvYmxlbSBpcyBzdGlsbCB0aGVyZS4KClNvIEkgdHJpZWQgdG8gYm9vdCBhZ2FpbiB3aXRo
IEVYVExJTlVYIChpbnN0ZWFkIG9mIGludGVycnVwdGluZwpleHRsaW51eCBhbmQgdGhlbiBib290
aW5nIG1hbnVhbGx5KSBvbiBteSBjdXJyZW50IEZlZG9yYSAzMSBzZXR1cC4gSXQKYm9vdGVkIHBy
b3Blcmx5IChJIGRpZG4ndCBleHBlY3QgdGhhdCkuIEhvcGVmdWxseSB0aGUgbmV4dCBvbmUgZnJv
bQpLb2ppIGFsc28gd29ya3MuCgpkYXZpZAoKPgo+IC0tCj4gQXVyZWxpZW4gSmFybm8gICAgICAg
ICAgICAgICAgICAgICAgICAgIEdQRzogNDA5NlIvMURERDhDOUIKPiBhdXJlbGllbkBhdXJlbDMy
Lm5ldCAgICAgICAgICAgICAgICAgaHR0cDovL3d3dy5hdXJlbDMyLm5ldAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1yaXNjdiBtYWls
aW5nIGxpc3QKPiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBs
aXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
