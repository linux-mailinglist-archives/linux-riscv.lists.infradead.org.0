Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F46A62CC
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 09:39:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0dcDY5d079dKjH0vN+pXEpuCpSQj4ZrGp1SbruNO2Y=; b=tKKKHx8CNNRx6q
	uy+h4QUmBT6sWGv5BxqCCKTQAHBLQv9Lj516opY1bLIOYtaOxpaj+SVUZrmf+oUBBDSNxWXRUROPe
	GTOm0BwCWluhXo0IOK5RAP0cefaWJiU0fNR9RU95Bz/KXFu/REKe4iVdEMrGaESwsX9Y51YovTknF
	pw4xRKyYWcbS5tTh6C+laNg4vpL/DZxgs6AIVN8wv8qRzn187uZyuiivnkdZGKwSSjyDC0mxqvY20
	cC2wycUDvtiD4QK/pGm8Z4p392jYipiIiKzNej5xW8g778UZwe3Hp2AdS87MKlAKJxG556I7xDJI/
	xup32YkArQal4/QGat3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53Ou-0002Tk-DC; Tue, 03 Sep 2019 07:38:52 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i53On-0002SC-Nm; Tue, 03 Sep 2019 07:38:45 +0000
Date: Tue, 3 Sep 2019 00:38:45 -0700
From: "hch@infradead.org" <hch@infradead.org>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: [RFC PATCH 0/2] Add support for SBI version to 0.2
Message-ID: <20190903073845.GA1170@infradead.org>
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190827144624.GA18535@infradead.org>
 <a31c39e8653bd04efe0051a5fd6f0238d33a80e7.camel@wdc.com>
 <20190829105919.GB8968@infradead.org>
 <4bd0a62ba36587661574e1bf8b094b0a28ec8941.camel@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4bd0a62ba36587661574e1bf8b094b0a28ec8941.camel@wdc.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "alankao@andestech.com" <alankao@andestech.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "hch@infradead.org" <hch@infradead.org>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTE6MTM6MjVQTSArMDAwMCwgQXRpc2ggUGF0cmEgd3Jv
dGU6Cj4gSWYgSSB1bmRlcnN0b29kIHlvdSBjbGVhcmx5LCB5b3Ugd2FudCB0byBjYWxsIGl0IGxl
Z2FjeSBpbiB0aGUgc3BlYyBhbmQKPiBqdXN0IHNheSB2MC4xIGV4dGVuc2lvbnMuCj4gCj4gVGhl
IHdob2xlIGlkZWEgb2YgbWFya2luZyB0aGVtIGFzIGxlZ2FjeSBleHRlbnNpb25zIHRvIGluZGlj
YXRlIHRoYXQgaXQKPiB3b3VsZCBiZSBvYnNvbGV0ZSBpbiB0aGUgZnV0dXJlLgo+IAo+IEJ1dCBJ
IGFtIG5vdCB0b28gd29ycmllZCBhYm91dCB0aGUgc2VtYW50aWNzIGhlcmUuIFNvIEkgYW0gZmlu
ZSB3aXRoCj4ganVzdCBjaGFuZ2luZyB0aGUgdGV4dCB0byB2MC4xIGlmIHRoYXQgYXZvaWRzIGNv
bmZ1c2lvbi4KClNvIG15IG1haW4gcHJvYmxlbXMgaXMgdGhhdCB3ZSBhcmUgbHVtcGluZyBhbGwg
dGhlICJsZWdhY3kiIGV4dGVuc2lvbnMKdG9nZXRoZXIuICBXaGlsZSBzb21lIG9mIHRoZW0gYXJl
IHNpbXBseSBhIGJhZCBpZGVhIGFuZCBzaG91bGRuJ3QKcmVhbGx5IGJlIGltcGxlbWVudGVkIGZv
ciBhbnl0aGluZyBuZXcgZXZlciwgb3RoZXJzIGxpa2UgdGhlIHNmZW5jZS52bWEKYW5kIGlwaSBv
bmVzIGFyZSBuZWVkZWQgdW50aWwgd2UgaGF2ZSBoYXJkd2FyZSBzdXBwb3J0IHRvIGF2b2lkIHRo
ZW0KYW5kIHBvc3NpYmx5IGZvcmV2ZXIgZm9yIHZpcnR1YWxpemF0aW9uLgoKU28gZWl0aGVyIHdl
IHVzZSBkaWZmZXJlbnQgbWFya2VycyBvZiBsZWdhY3kgZm9yIHRoZW0sIG9yIHdlIGF0IGxlYXN0
CmRlZmluZSBuZXcgZXh0ZW5zaW9ucyB0aGF0IHJlcGxhY2UgdGhlbSBhdCB0aGUgc2FtZSB0aW1l
LiAgV2hhdCBJCndhbnQgdG8gYXZvaWQgaXMgdGhlIHBvc3NpYtGWbHkgb2YgYW4gaW1wbGVtZW50
YXRpb24gdXNpbmcgdGhlIHJlYWxseQpsZWdhY3kgYml0cyBhbmQgbmV3IGV4dGVuc2lvbnMgYXQg
dGhlIHNhbWUgdGltZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cmlzY3YK
