Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE8367FC9
	for <lists+linux-riscv@lfdr.de>; Sun, 14 Jul 2019 17:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sg2MzOjWaG4ARy9+OT+/G5oZwQaLliFXvsX8Q10XB1Q=; b=eDVAu1HKUrtblW
	FaxlwoAEe5Z3FmXtqinwjwannX5GGYp2BbTPx/+C9qPDlb8Nv6omfjHI1bGXtMe5TC7ryPYmK2qwq
	KEZgXeOELq4OJOyAalLCGbTE/MSn/Qrzob8nuHqhOopuWOc4+5jh6dXDEc7nU/ZjazSDu1gdXmcrn
	RjuqLrUhTgsvxqTTKw54tNcWcBeK7gaLKdoB1rEV5W70XVhKBynRZJ2AldRpN0OJJ55Fqgq1clG5s
	kZB+P6wfZBqUyWR0nww9qS8rvYiTzSLpd674Qgijl9W9CjT+qAC4M0vlqSVlYQ++T2EVJHr7GVsyA
	P95P93/SoxFr8X0EWdYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmgJe-0008Es-Fr; Sun, 14 Jul 2019 15:21:30 +0000
Received: from out30-56.freemail.mail.aliyun.com ([115.124.30.56])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmgJK-00083g-M6; Sun, 14 Jul 2019 15:21:13 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R101e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04423; MF=alex.shi@linux.alibaba.com; NM=1;
 PH=DS; RN=17; SR=0; TI=SMTPD_---0TWrpoRa_1563117663; 
Received: from IT-FVFX43SYHV2H.lan(mailfrom:alex.shi@linux.alibaba.com
 fp:SMTPD_---0TWrpoRa_1563117663) by smtp.aliyun-inc.com(127.0.0.1);
 Sun, 14 Jul 2019 23:21:03 +0800
Subject: Re: [PATCH 01/12] Documentation: move architectures together
To: Jonathan Corbet <corbet@lwn.net>
References: <20190712022018.27989-1-alex.shi@linux.alibaba.com>
 <20190712113427.62fa7ffc@lwn.net>
From: Alex Shi <alex.shi@linux.alibaba.com>
Message-ID: <36c522c5-975e-e38e-daad-0f3d9f93b186@linux.alibaba.com>
Date: Sun, 14 Jul 2019 23:21:03 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190712113427.62fa7ffc@lwn.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_082110_896333_919D7E12 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: -5.5 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.56 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-s390@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, kvm@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-omap@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="gbk"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgSm9uLAoKVGhhbmtzIGZvciBxdWljayByZXNwb25zZSEKCtTaIDIwMTkvNy8xMyDJz87nMToz
NCwgSm9uYXRoYW4gQ29yYmV0INC0tcA6Cj4gT24gRnJpLCAxMiBKdWwgMjAxOSAxMDoyMDowNyAr
MDgwMAo+IEFsZXggU2hpIDxhbGV4LnNoaUBsaW51eC5hbGliYWJhLmNvbT4gd3JvdGU6Cj4gCj4+
IFRoZXJlIGFyZSBtYW55IGRpZmZlcmVudCBhcmNocyBpbiBEb2N1bWVudGF0aW9uLyBkaXIsIGl0
J3MgYmV0dGVyIHRvCj4+IG1vdmUgdGhlbSB0b2dldGhlciBpbiAnRG9jdW1lbnRhdGlvbi9hcmNo
JyB3aGljaCBmb2xsb3dzIGZyb20ga2VybmVsIHNvdXJjZS4KPiAKPiBTbyB0aGlzIHNlZW1zIGNl
cnRhaW4gdG8gY29sbGlkZSBiYWRseSB3aXRoIE1hdXJvJ3MgUlNULWNvbnZlcnNpb24gbW9uc3Rl
cgo+IHBhdGNoIHNldC4KCkkgZG9uJ3QgbWVhbiB0aGF0LCBzb3JyeSwgYW5kIHdlIGNhbiBmaWd1
cmUgb3V0IGlmIGJvdGggb2YgdGhlbSBhcmUgd29ydGh5IHRvIGJlIHBpY2tlZCB1cC4KCj4gCj4g
TW9yZSB0byB0aGUgcG9pbnQsIHRob3VnaC4uLmlmIHdlIGFyZSBnb2luZyB0byB0aHJhc2ggdXAg
dGhpbmdzIHRoaXMKPiBiYWRseSwgd2Ugd2FudCB0byBiZSBzdXJlIHRoYXQgd2UncmUgZG9pbmcg
aXQgcmlnaHQgc28gd2UgZG9uJ3QgZW5kIHVwCj4gcmVuYW1pbmcgZXZlcnl0aGluZyBhZ2Fpbi4g
IEdyb3VwaW5nIHN0dWZmIGludG8gYSBuZXcgYXJjaC8gc3ViZGlyZWN0b3J5Cj4gYWRkcyBhIGJp
dCBvZiBvcmRlciwgYnV0IGl0IGRvZXNuJ3QgZG8gbXVjaCB0b3dhcmQgdHJ5aW5nIHRvIG9yZ2Fu
aXplIG91cgo+IGRvY3VtZW50YXRpb24gZm9yIGl0cyByZWFkZXJzLCBhbmQgaXQgZG9lc24ndCBo
ZWxwIHVzIHRvIG1vZGVybml6ZSB0aGUKPiBkb2NzIGFuZCBnZXQgcmlkIG9mIHRoZSBvbGQsIHVz
ZWxlc3Mgc3R1ZmYuICBBIHF1aWNrIGNoZWNrIHNob3dzIHRoYXQgbWFueQo+IG9mIHRoZXNlIGZp
bGVzIGhhdmUgc2VlbiBubyBjaGFuZ2VzIG90aGVyIHRoYW4gdHlwbyBmaXhlcyBzaW5jZSB0aGUK
PiBiZWdpbm5pbmcgb2YgdGhlIEdpdCBlcmEuCgpSaWdodCwgdGhlcmUgaXMgc29tZSBkb2NzIHdo
aWNoIG5lZWQgdG8gYmUgdXBkYXRlIG9yIGV2ZW4gZHJvcCwgYW5kIGEgcmVvcmRlciB3b3VsZCBi
ZSBhIHRpbWluZyB0byBwdXNoIGVhY2ggb2YgYXJjaCBtYWludGFpbmVyIHRvIGRvIHNvbWV0aGlu
ZywgaXNuJ3QgaXQ/IEFueXdheSwgcmVvcmRlcmluZyAgZG9jdW1lbnRzIGxpa2Uga2VybmVsIHNv
dXJjZSBkaXIgY291bGQgYmUgb25lIG9mIGNob2ljZXMuIDopCgo+IAo+IFNvLCBpbiBteSBtaW5k
LCB0aGlzIG5lZWRzIHNvbWUgdGhvdWdodC4gIE1heWJlIHdlIHdhbnQgYQo+IERvY3VtZW50YXRp
b24vYXJjaCBpbiB0aGUgZW5kLCBidXQgSSdtIG5vdCBjb252aW5jZWQgdGhhdCB3ZSBzaG91bGQg
anVzdAo+IGNyZWF0ZSBpdCBhbmQgZmlsbCBpdCB3aXRoIGEgc25vdyBzaG92ZWwuICBUaGlzIG1p
Z2h0IGJlIGEgZ29vZCB0aGluZyB0bwo+IGRpc2N1c3MgYXQgdGhlIGtlcm5lbCBzdW1taXQgaW4g
U2VwdGVtYmVyLgoKVGhhbmtzIGZvciBjb25zaWRlcmluZywgYW55d2F5LCBpdCBjb3VsZCBiZSBh
IGdvb2Qgc3RhcnQgdG8gZ2V0IGhhbmRzIGRpcnR5IHdoZXRoZXIgdGhlIGFyY2ggZGlyIGlzIG5l
ZWRlZC4gCgpUaGFua3MKQWxleAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yaXNjdgo=
