Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1603CB39DD
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 14:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iu88gHojdaIAIP4uxHTy/GZmRmrjDqP/f7a3znONLTw=; b=beK0k3RE7S/0E5
	a4HGew72u55B+WxL5JHuelkTot8hALW0kebgJ8Yi8IMd7hZgbFbfWvuIopSjTw3j3eDL0SoM7Sb0N
	v/pydpHmuwE+A6F5U2f/paX5jFLlsdjr0vHULR2TKFOk6lFzlw65U3+yegfCSw2Dsad+MEzEWQSOQ
	0IJMbiUmofZVrzxnXu55RxSp5rxh95qTu9RZpBYma7HNOjEPvLAFs48izOh6RK8riNEjVfdAzjALo
	gzGpMv+q9FKsdQZr/05uJ+hUD/VXY/iN2NiZDbpa6pWESbwIndBtOozHT3bUtRifml5i6nl2Gf2vW
	ZiwdiC30s4skbJIBnM0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9pgX-0002eQ-MF; Mon, 16 Sep 2019 12:00:49 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9pgS-0002dH-Df
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 12:00:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 340B9AFF3;
 Mon, 16 Sep 2019 12:00:40 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
 <alpine.DEB.2.21.9999.1909160456010.7214@viisi.sifive.com>
X-Yow: I need to discuss BUY-BACK PROVISIONS with at least
 six studio SLEAZEBALLS!!
Date: Mon, 16 Sep 2019 14:00:39 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1909160456010.7214@viisi.sifive.com> (Paul
 Walmsley's message of "Mon, 16 Sep 2019 04:57:14 -0700 (PDT)")
Message-ID: <mvm7e68fo2g.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_050044_610128_0EFD286D 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, jslaby@suse.com, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2VwIDE2IDIwMTksIFBhdWwgV2FsbXNsZXkgPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNvbT4g
d3JvdGU6Cgo+IE9uIFR1ZSwgMTAgU2VwIDIwMTksIEFuZHJlYXMgU2Nod2FiIHdyb3RlOgo+Cj4+
IE9uIFNlcCAxMCAyMDE5LCBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGxzdC5kZT4gd3JvdGU6Cj4+
IAo+PiA+IE9uIFR1ZSwgU2VwIDEwLCAyMDE5IGF0IDA4OjU3OjM3QU0gKzAyMDAsIEFuZHJlYXMg
U2Nod2FiIHdyb3RlOgo+PiA+PiBPbiBTZXAgMTAgMjAxOSwgQ2hyaXN0b3BoIEhlbGx3aWcgPGhj
aEBsc3QuZGU+IHdyb3RlOgo+PiA+PiAKPj4gPj4gPiBUaGUgc2lmaXZlIHNlcmlhbCBkcml2ZXIg
aW1wbGVtZW50cyBlYXJseWNvbiBzdXBwb3J0LAo+PiA+PiAKPj4gPj4gSXQgc2hvdWxkIHByb2Jh
Ymx5IGJlIGRvY3VtZW50ZWQgaW4gYWRtaW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0Lgo+
PiA+Cj4+ID4gSG93IHNvPyAgV9GWdGggT0YgYW5kIGEgc3Rkb3V0IHBhdGggeW91IGp1c3Qgc2V0
IGVhcmx5Y29uIG9uIHRoZQo+PiA+IGNvbW1hbmQgbGluZSB3aXRob3V0IGFueSBhcmd1bWVudHMg
YW5kIGl0IHdpbGwgYmUgZm91bmQuCj4+IAo+PiBEb2Vzbid0IHdvcmsgZm9yIG1lLgo+PiAKPj4g
WyAgICAwLjAwMDAwMF0gTWFsZm9ybWVkIGVhcmx5IG9wdGlvbiAnZWFybHljb24nCj4KPiBUcnk6
Cj4KPiAgICAgZWFybHljb249c2lmaXZlLDB4MTAwMTAwMDAKClRoYXQncyBub3Qgd2hhdCBDaHJp
c3RvcGggd2FudHMuCgpBbmRyZWFzLgoKLS0gCkFuZHJlYXMgU2Nod2FiLCBTVVNFIExhYnMsIHNj
aHdhYkBzdXNlLmRlCkdQRyBLZXkgZmluZ2VycHJpbnQgPSAwMTk2IEJBRDggMUNFOSAxOTcwIEY0
QkUgIDE3NDggRTRENCA4OEUzIDBFRUEgQjlENwoiQW5kIG5vdyBmb3Igc29tZXRoaW5nIGNvbXBs
ZXRlbHkgZGlmZmVyZW50LiIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcmlzY3YK
