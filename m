Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C43D7AED6E
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 16:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCB+aSvLk6YU4j+gT1Zg8y0jdJRLmZSGBx2RZZBSDMQ=; b=UCkmdhNJcImoix
	9yE8SvdrSYsl3vMCbRO8GxTAvWzw8IKb/LgMiP1nsSJrZrYinpB+Tyf7o/u+8w7HG/BESZILIIHLK
	zx7KqseKTrZIQh32R+tvffaofXTbwoB3iZOyAnDkVDL5xkA+cvgZd3URSfCsibdLUxj2TIMTCATVT
	neEpkWyGHG3Y9eGXa0+oQ1IBqUoQnXhKn8sl9CArCfpxejZHE69REdJrPGDWrVSfuHIcXD6AUJj/O
	iXcLbYvYWqmhMeAekpJCQ8XUc8r4BCnruJceewQKPSGc310bLbkOx5rK3EtuK1yCEd3oaO0BGqQbP
	GnFa323WbxETMlg6ODlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hMb-0003zw-Aq; Tue, 10 Sep 2019 14:43:25 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hLn-00035M-Nu
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 14:42:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id CD812B742;
 Tue, 10 Sep 2019 14:42:33 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
 <20190910143630.GA6794@lst.de>
X-Yow: I'm in DISGUISE as a BAGGAGE CHECKER....I can watch the house, if it's
 ORANGE...
Date: Tue, 10 Sep 2019 16:42:33 +0200
In-Reply-To: <20190910143630.GA6794@lst.de> (Christoph Hellwig's message of
 "Tue, 10 Sep 2019 16:36:30 +0200")
Message-ID: <mvmftl4p606.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_074236_265285_D91D96D6 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
Cc: gregkh@linuxfoundation.org, jslaby@suse.com, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2VwIDEwIDIwMTksIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToKCj4g
T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTA6MTg6MTVBTSArMDIwMCwgQW5kcmVhcyBTY2h3YWIg
d3JvdGU6Cj4+ID4gSG93IHNvPyAgV9GWdGggT0YgYW5kIGEgc3Rkb3V0IHBhdGggeW91IGp1c3Qg
c2V0IGVhcmx5Y29uIG9uIHRoZQo+PiA+IGNvbW1hbmQgbGluZSB3aXRob3V0IGFueSBhcmd1bWVu
dHMgYW5kIGl0IHdpbGwgYmUgZm91bmQuCj4+IAo+PiBEb2Vzbid0IHdvcmsgZm9yIG1lLgo+PiAK
Pj4gWyAgICAwLjAwMDAwMF0gTWFsZm9ybWVkIGVhcmx5IG9wdGlvbiAnZWFybHljb24nCj4KPiBU
aGF0IGZ1bmN0aW9uYWxpdHkgaXMgaW1wbGVtZW50ZWQgYnkgcGFyYW1fc2V0dXBfZWFybHljb24g
YW5kCj4gZWFybHlfaW5pdF9kdF9zY2FuX2Nob3Nlbl9zdGRvdXQuICBDaGVjayB3aHkgdGhvc2Ug
YXJlbid0IGJ1aWx0IGludG8KPiB5b3VyIGtlcm5lbC4KClRoZXkgYXJlLgoKQW5kcmVhcy4KCi0t
IApBbmRyZWFzIFNjaHdhYiwgU1VTRSBMYWJzLCBzY2h3YWJAc3VzZS5kZQpHUEcgS2V5IGZpbmdl
cnByaW50ID0gMDE5NiBCQUQ4IDFDRTkgMTk3MCBGNEJFICAxNzQ4IEU0RDQgODhFMyAwRUVBIEI5
RDcKIkFuZCBub3cgZm9yIHNvbWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudC4iCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWls
aW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
