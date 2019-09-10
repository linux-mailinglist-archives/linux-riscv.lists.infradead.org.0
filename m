Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF2FAED31
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Sep 2019 16:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CYDu5lqdZ3TRb0eb9HKlDwEO/zM1m03WIEOe8cpMX4=; b=dWPnjPJtsX/roR
	DN8joDafSxF3mUM8wSwtbwI3/3c9zKaMAwB0OnohGTgbmMDWMMsTO4SZXEqGzOFCxsNFf7AKBR2Lh
	ohZMZZnwfq7e70sX4hCc67y5IcCVlTaO/EPncfQqSu6SIXhSrMUQhPMR9BiHuD698LUc3p0E/g7xv
	Rt+QEsB1GmXCiJe0geGNAQACdwvcHFIHVt0DNUHCl8lCyY7JbmtooRApoWX9E2RZSmc2me67rkAL0
	doWohyNfHo4pbAiPtpq0dl5qmjttWo8XtjyDKtrTTjVowQHTVvVNTDP/tGA3uXKfTPDOnQOoAcHS4
	dluQkMM8yovEhZZZBhAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hG3-0000Hr-2O; Tue, 10 Sep 2019 14:36:39 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hFy-0000HA-JC
 for linux-riscv@lists.infradead.org; Tue, 10 Sep 2019 14:36:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id CC9FD68AFE; Tue, 10 Sep 2019 16:36:30 +0200 (CEST)
Date: Tue, 10 Sep 2019 16:36:30 +0200
From: Christoph Hellwig <hch@lst.de>
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] serial/sifive: select SERIAL_EARLYCON
Message-ID: <20190910143630.GA6794@lst.de>
References: <20190910055923.28384-1-hch@lst.de> <mvm4l1kskny.fsf@suse.de>
 <20190910070503.GA31743@lst.de> <mvmzhjcr2d4.fsf@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mvmzhjcr2d4.fsf@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_073634_776458_420B514E 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMTA6MTg6MTVBTSArMDIwMCwgQW5kcmVhcyBTY2h3YWIg
d3JvdGU6Cj4gPiBIb3cgc28/ICBX0ZZ0aCBPRiBhbmQgYSBzdGRvdXQgcGF0aCB5b3UganVzdCBz
ZXQgZWFybHljb24gb24gdGhlCj4gPiBjb21tYW5kIGxpbmUgd2l0aG91dCBhbnkgYXJndW1lbnRz
IGFuZCBpdCB3aWxsIGJlIGZvdW5kLgo+IAo+IERvZXNuJ3Qgd29yayBmb3IgbWUuCj4gCj4gWyAg
ICAwLjAwMDAwMF0gTWFsZm9ybWVkIGVhcmx5IG9wdGlvbiAnZWFybHljb24nCgpUaGF0IGZ1bmN0
aW9uYWxpdHkgaXMgaW1wbGVtZW50ZWQgYnkgcGFyYW1fc2V0dXBfZWFybHljb24gYW5kCmVhcmx5
X2luaXRfZHRfc2Nhbl9jaG9zZW5fc3Rkb3V0LiAgQ2hlY2sgd2h5IHRob3NlIGFyZW4ndCBidWls
dCBpbnRvCnlvdXIga2VybmVsLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yaXNjdgo=
