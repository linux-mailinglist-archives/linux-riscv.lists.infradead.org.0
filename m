Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9CEE2771
	for <lists+linux-riscv@lfdr.de>; Thu, 24 Oct 2019 02:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+PYVS65yLviY4o6WP0CdszpyLvFwoLzfJGxqrWldkU=; b=C7MC7RIKC+foLE
	lq5hI5f8QbXJAZM5euwPwtO6fiMD3ewl7d9qEsi+9AycE+bFe56SMqDPb98yIjz4Mjt9nEDsvk6Lq
	GRw/7AmexM+76s1a1I8wz8e+D1c3uaAdL90Js5xKN5Mr498d9eVellXLe5BdRiqfbQvI8NkNi73U9
	jHOGL2hTiFKR0aZqO8JT2FGuMENXWm4Z8/mX0Fk8bf7sOmz6erGyjEb+SaacrZlvthm/2dhVod7yk
	KI3T0+aG1BeBgpcLxSM1qWte621zau6pDwOIJzgECG/uRW2anrVDDQnSLqy7hgOIAkehcamp/g/sZ
	XGVJA+r6FB9bK8XthC9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNRFq-0001RU-Mk; Thu, 24 Oct 2019 00:45:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNRFm-0001Qc-Lw
 for linux-riscv@lists.infradead.org; Thu, 24 Oct 2019 00:45:28 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A49175571B5223214D70;
 Thu, 24 Oct 2019 08:45:20 +0800 (CST)
Received: from [127.0.0.1] (10.133.217.137) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 24 Oct 2019 08:45:16 +0800
Subject: Re: [PATCH 1/2] riscv: Fix implicit declaration of 'page_to_section'
To: Paul Walmsley <paul.walmsley@sifive.com>
References: <20191023032302.160388-1-wangkefeng.wang@huawei.com>
 <alpine.DEB.2.21.9999.1910231144480.16536@viisi.sifive.com>
From: Kefeng Wang <wangkefeng.wang@huawei.com>
Message-ID: <b26aa81d-509e-b997-cd90-6daa4b289f35@huawei.com>
Date: Thu, 24 Oct 2019 08:45:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.9999.1910231144480.16536@viisi.sifive.com>
Content-Language: en-US
X-Originating-IP: [10.133.217.137]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_174526_891871_E324D834 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Logan Gunthorpe <logang@deltatee.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LzEwLzI0IDI6NDcsIFBhdWwgV2FsbXNsZXkgd3JvdGU6Cj4gT24gV2VkLCAyMyBP
Y3QgMjAxOSwgS2VmZW5nIFdhbmcgd3JvdGU6Cj4gCj4+IFdpdGggQ09ORklHX1NQQVJTRU1FTSBh
bmQgIUNPTkZJR19TUEFSU0VNRU1fVk1FTU1BUCwKPj4KPj4gYXJjaC9yaXNjdi9pbmNsdWRlL2Fz
bS9wZ3RhYmxlLmg6IEluIGZ1bmN0aW9uIOKAmG1rX3B0ZeKAmToKPj4gaW5jbHVkZS9hc20tZ2Vu
ZXJpYy9tZW1vcnlfbW9kZWwuaDo2NDoxNDogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9m
IGZ1bmN0aW9uIOKAmHBhZ2VfdG9fc2VjdGlvbuKAmTsgZGlkIHlvdSBtZWFuIOKAmHByZXNlbnRf
c2VjdGlvbuKAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4+ICAg
aW50IF9fc2VjID0gcGFnZV90b19zZWN0aW9uKF9fcGcpOyAgIFwKPj4gICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn5+fn4KPj4KPj4gRml4ZWQgYnkgY2hhbmdpbmcgbWtfcHRlKCkgZnJvbSBpbmxp
bmUgZnVuY3Rpb24gdG8gbWFjcm8uCj4+Cj4+IENjOiBMb2dhbiBHdW50aG9ycGUgPGxvZ2FuZ0Bk
ZWx0YXRlZS5jb20+Cj4+IEZpeGVzOiBkOTVmMWE1NDJjM2QgKCJSSVNDLVY6IEltcGxlbWVudCBz
cGFyc2VtZW0iKQo+PiBTaWduZWQtb2ZmLWJ5OiBLZWZlbmcgV2FuZyA8d2FuZ2tlZmVuZy53YW5n
QGh1YXdlaS5jb20+Cj4gCj4gVGhhbmtzIGZvciB0aGUgZml4LCBidXQgdGhpcyBwYXRjaCBhZGRz
IGNoZWNrcGF0Y2ggZXJyb3JzOgo+IAo+IC0tLQo+IEVSUk9SOiBzcGFjZSByZXF1aXJlZCBhZnRl
ciB0aGF0ICcsJyAoY3R4OlZ4VikKPiAjMzc6IEZJTEU6IGFyY2gvcmlzY3YvaW5jbHVkZS9hc20v
cGd0YWJsZS5oOjE4NzoKPiArI2RlZmluZSBta19wdGUocGFnZSxwcm90KSAgICAgICBwZm5fcHRl
KHBhZ2VfdG9fcGZuKHBhZ2UpLHByb3QpCj4gICAgICAgICAgICAgICAgICAgICBeCj4gCj4gRVJS
T1I6IHNwYWNlIHJlcXVpcmVkIGFmdGVyIHRoYXQgJywnIChjdHg6VnhWKQo+ICMzNzogRklMRTog
YXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9wZ3RhYmxlLmg6MTg3Ogo+ICsjZGVmaW5lIG1rX3B0ZShw
YWdlLHByb3QpICAgICAgIHBmbl9wdGUocGFnZV90b19wZm4ocGFnZSkscHJvdCkKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+IAo+
IHRvdGFsOiAyIGVycm9ycywgMCB3YXJuaW5ncywgMCBjaGVja3MsIDExIGxpbmVzIGNoZWNrZWQK
PiAtLS0KPiAKCm9vcHMuCgo+IFBsZWFzZSBydW4gJ2NoZWNrcGF0Y2gucGwgLS1zdHJpY3QnIG9u
IHBhdGNoZXMgYmVmb3JlIHN1Ym1pdHRpbmcuICAKPiAKT2ssIHdpbGwgZG8gbmV4dCB0aW1lLgoK
PiBBbnl3YXksIHRoZXNlIGhhdmUgYmVlbiBmaXhlZCB1cCBoZXJlIGFuZCBxdWV1ZWQgZm9yIHY1
LjQtcmMgd2l0aCBMb2dhbidzIAo+IFJldmlld2VkLWJ5Oi4KPiAKVGhhbmtzLgoKCj4gCj4gLSBQ
YXVsCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
