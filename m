Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE1A2F79C
	for <lists+linux-riscv@lfdr.de>; Thu, 30 May 2019 08:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UR3zgtPDHpJ15GCUd5O1nYpY31QlVfFNwi25YzVrUBI=; b=nRO+OPuZgiG8jg
	2v7lS0Q6r8uPJhV1B5Q/pvjYYTvSSfqY2pY2BVWcDu3NUzh76pQ+pySbHdkht77y050qjmXyLt6KE
	wNtdcQcaHh6///7hhNwuRROgvNa3lGM0WiXGspR2E42ZyMK5esJCsVQ+Nbf+iUODluEbMFeuUy7Uv
	lp0XKdIQNKZC+ybAFmGEZGKYYy6GavCyN5x9VYgvVj4Wi+lqrwUebQrStlJIgL4MDb/aQ6/o8VeDQ
	WEJDlN5RUhQtYhWdWYutbJ8fU4r6m+SonkpLuFyGhtoUu1VonIXE42sbwrzr5MrqNY4fd/C4so47k
	l1jbPtWLXRcrQRDjetkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWExi-00081A-T1; Thu, 30 May 2019 06:54:54 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWExf-00080A-8M
 for linux-riscv@lists.infradead.org; Thu, 30 May 2019 06:54:52 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x4U6n038060958;
 Thu, 30 May 2019 14:49:00 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Thu, 30 May 2019
 14:54:35 +0800
Date: Thu, 30 May 2019 14:54:36 +0800
From: Nick Hu <nickhu@andestech.com>
To: Greentime Ying-Han =?utf-8?B?SHUo6IOh6Iux5ryiKQ==?=
 <greentime@andestech.com>, "palmer@sifive.com" <palmer@sifive.com>,
 "albert@sifive.com" <albert@sifive.com>, "linux-riscv@lists.infradead.org"
 <linux-riscv@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "hch@infradead.org" <hch@infradead.org>
Subject: Re: [PATCH v2] riscv: Fix udelay in RV32.
Message-ID: <20190530065436.GA15137@andestech.com>
References: <67a14915b99ee5d933ef9e7e056fc6e1935e775e.1559198255.git.nickhu@andestech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67a14915b99ee5d933ef9e7e056fc6e1935e775e.1559198255.git.nickhu@andestech.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x4U6n038060958
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_235451_553020_BAD6481E 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: "green.hu@gmail.com" <green.hu@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMzAsIDIwMTkgYXQgMDI6NDk6MTBQTSArMDgwMCwgTmljayBDaHVuLU1pbmcg
SHUo6IOh5bO76YqYKSB3cm90ZToKPiBJbiBSVjMyLCB1ZGVsYXkgd291bGQgZGVsYXkgdGhlIHdy
b25nIGN5Y2xlLiBXaGVuIGl0IHNoaWZ0cyByaWdodAo+ICJVREVMQVlfU0hJVEZUIiBiaXRzLCBp
dCBlaXRoZXIgZGVsYXlzIDAgY3ljbGUgb3IgMSBjeWNsZS4gSXQgb25seSB3b3Jrcwo+IGNvcnJl
Y3RseSBpbiBSVjY0LiBCZWNhdXNlIHRoZSAndWN5Y2xlcycgYWx3YXlzIG5lZWRzIHRvIGJlIDY0
IGJpdHMKPiB2YXJpYWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWNrIEh1IDxuaWNraHVAYW5k
ZXN0ZWNoLmNvbT4KPiAtLS0KPiAgYXJjaC9yaXNjdi9saWIvZGVsYXkuYyB8IDIgKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvcmlzY3YvbGliL2RlbGF5LmMgYi9hcmNoL3Jpc2N2L2xpYi9kZWxheS5jCj4gaW5k
ZXggZGNlOGFlMjRjNmQzLi5lZTY4NTNjMWUzNDEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9s
aWIvZGVsYXkuYwo+ICsrKyBiL2FyY2gvcmlzY3YvbGliL2RlbGF5LmMKPiBAQCAtODgsNyArODgs
NyBAQCBFWFBPUlRfU1lNQk9MKF9fZGVsYXkpOwo+ICAKPiAgdm9pZCB1ZGVsYXkodW5zaWduZWQg
bG9uZyB1c2VjcykKPiAgewo+IC0JdW5zaWduZWQgbG9uZyB1Y3ljbGVzID0gdXNlY3MgKiBscGpf
ZmluZSAqIFVERUxBWV9NVUxUOwo+ICsJdTY0IHVjeWNsZXMgPSAodTY0KXVzZWNzICogbHBqX2Zp
bmUgKiBVREVMQVlfTVVMVDsKPiAgCj4gIAlpZiAodW5saWtlbHkodXNlY3MgPiBNQVhfVURFTEFZ
X1VTKSkgewo+ICAJCV9fZGVsYXkoKHU2NCl1c2VjcyAqIHJpc2N2X3RpbWViYXNlIC8gMTAwMDAw
MFVMTCk7Cj4gLS0gCj4gMi4xNy4wCj4KCkhpIEFsbCwgSSBmb3Jnb3QgdG8gYWRkICJSZXZpZXdl
ZC1ieTogUGFsbWVyIERhYmJlbHQgPHBhbG1lckBzaWZpdmUuY29tPiIuCkkgd2lsbCBzZW5kIGFu
b3RoZXIgcGF0Y2guCgpTb3JyeS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcmlzY3YK
