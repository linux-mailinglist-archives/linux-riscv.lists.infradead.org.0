Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9312AE43B
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 09:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ev9cQZQZowHbZ0UJWqeFWtWANhEJSl4ETeJ/wz++asU=; b=e1AvY0o8CUuRZd
	Y+FP15mdRSZPJrRGYQZgXI+/iWjEvV0a/BL0KnEsnOrlsGG+HjsW1E0uZ7wV8Wz7aX9xU/SGWq1ql
	xDz+VdTE+/PbRmpFpd0tOIkPxmTQi1hNKnGcZHmq/WcE9G3PFL+qGl0zvntUPIqU62YtfQkUT2ADm
	Vo4KzcaKWcTOaYCVw9RiJ3x4a9Zp60RBheq1XUletsjRAzEILGCbiQm3FgOwxGt8lEh390DP+dGXz
	i/FPMFnJlQfEbWm1s0y3O1wqgtRRL9CDLEOY5JfKGBa+75hb4B6/vJ3PyBgr5/ev07g62iDbhoUSA
	peNBg/Z9q8ohXKFvu9WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aDV-0007tF-44; Tue, 10 Sep 2019 07:05:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aD9-0007DC-Tx
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 07:05:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 99D8068B02; Tue, 10 Sep 2019 09:05:03 +0200 (CEST)
Date: Tue, 10 Sep 2019 09:05:03 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
Message-ID: <20190910070503.GA31743@lst.de>
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvm4l1kskny.fsf@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_000513_704731_A24E4583 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDg6NTc6MzdBTSArMDIwMCwgQW5kcmVhcyBTY2h3YWIg
d3JvdGU6Cj4gT24gU2VwIDEwIDIwMTksIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3
cm90ZToKPiAKPiA+IFRoZSBzaWZpdmUgc2VyaWFsIGRyaXZlciBpbXBsZW1lbnRzIGVhcmx5Y29u
IHN1cHBvcnQsCj4gCj4gSXQgc2hvdWxkIHByb2JhYmx5IGJlIGRvY3VtZW50ZWQgaW4gYWRtaW4t
Z3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0LgoKSG93IHNvPyAgV9GWdGggT0YgYW5kIGEgc3Rk
b3V0IHBhdGggeW91IGp1c3Qgc2V0IGVhcmx5Y29uIG9uIHRoZQpjb21tYW5kIGxpbmUgd2l0aG91
dCBhbnkgYXJndW1lbnRzIGFuZCBpdCB3aWxsIGJlIGZvdW5kLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cmxp
bnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
