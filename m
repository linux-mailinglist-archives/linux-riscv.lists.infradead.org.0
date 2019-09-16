Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F9DB43DC
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Sep 2019 00:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=d26VFRFwZF43ukaO8t9tt7hUAvEl2F5AVzruoN9VDrY=; b=o56kUk92xYpCppMxwtOmoTL+t
	3TWUH3usCK5wByE8niAZPT8QfApxphWW94jtk+X93iOg8/XrF3lWOqox3eVGZUjQ2nuFp+QO8s0uL
	NQ2s6S9pw5L3uEzclnGJFUf39L70rt49I0l8E/E33cNTNE+ebqEbVNxmVubPeOEVwf87qA6Cu4DDc
	S5n9jJbY3HgwNHrA7/PbHo4/KGdgtn/4guB1YiMxpo8JoEXKZZfFRZn31VzLxqEz7Z4Is0DQGF3sa
	cejO7esg/3hnmYqB6xztyfUUDLE6NX4eqCWzdnJccir7OoyxDEO9WXk+5MHbIrbgyQBUS8a5eiQ+x
	YgAjE1BuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zJM-0002K4-9C; Mon, 16 Sep 2019 22:17:32 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9zJI-0002IH-62
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 22:17:29 +0000
Received: by mail-pf1-f195.google.com with SMTP id q21so753551pfn.11
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 15:17:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=4eRVYctvT7b9mrrUpmH0geIJNI/h0a/zkkUj2qegSLo=;
 b=EGkfqZB9YzUssiO2AV8xSW1wuE2btNyKscBhHLK5rdBPkO5sFzKsgyS5hrISWRBg51
 pWu0T3c81vGpTt7j27czWu3Qv54wcSjTAIKSpDdqofAbXPjWHAcJDHxRmSmVGjGYj8+t
 VynZBa40Bj5HHewmiKeKYn0dvUbw0NZpdCo/By02k5PrLYn11kSEFSWppLUXQCR7FJ9X
 fEW4LoeG/9zngYynYxgLX99DOTPS4UPdvDakhMArbG5D6J5al2n0jz05n7MrtYx6f5Jn
 TdYW/79AxMZKq36bz18y/uj06KTzO4C82xZtYTNANRj5fEKKX2cp/Q2hEqGdy4o85ibN
 28lA==
X-Gm-Message-State: APjAAAXF1I0VjSh/L6ffTBRd/PxJ7C+7zcT/WJBOfCLGNWUoAIggDbQ0
 WSHIt7bAmsfshC0hDpWmpLqB5A==
X-Google-Smtp-Source: APXvYqweY8GOMSLkwg6HUGLgHWm6JzSGKHn+VbGTKr+eU2auWkhRHChZa6V615VDPDZ19IQ92mD7gg==
X-Received: by 2002:a63:2104:: with SMTP id h4mr377363pgh.295.1568672246998;
 Mon, 16 Sep 2019 15:17:26 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id a4sm99338pfn.110.2019.09.16.15.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 15:17:25 -0700 (PDT)
Date: Mon, 16 Sep 2019 15:17:25 -0700 (PDT)
X-Google-Original-Date: Mon, 16 Sep 2019 15:17:15 PDT (-0700)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
In-Reply-To: <be21db32-ff5c-b25a-c8d6-af5bbd0c5469@bluespec.com>
From: Palmer Dabbelt <palmer@sifive.com>
To: Darius Rad <darius@bluespec.com>
Message-ID: <mhng-202c5678-9858-4948-9760-3de61f9148a7@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_151728_223776_F28B7138 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jason@lakedaemon.net, David Abdurachmanov <david.abdurachmanov@sifive.com>,
 maz@kernel.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCAxNiBTZXAgMjAxOSAxNDo0MTowNyBQRFQgKC0wNzAwKSwgRGFyaXVzIFJhZCB3cm90
ZToKPiBPbiA5LzE2LzE5IDQ6NTEgUE0sIFBhbG1lciBEYWJiZWx0IHdyb3RlOgo+PiBPbiBNb24s
IDE2IFNlcCAyMDE5IDEyOjA0OjU2IFBEVCAoLTA3MDApLCBEYXJpdXMgUmFkIHdyb3RlOgo+Pj4g
T24gOS8xNS8xOSAyOjIwIFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4gT24gU3VuLCAxNSBT
ZXAgMjAxOSAxODozMTozMyArMDEwMCwKPj4+PiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNpZml2
ZS5jb20+IHdyb3RlOgo+Pj4+Cj4+Pj4gSGkgUGFsbWVyLAo+Pj4+Cj4+Pj4+Cj4+Pj4+IE9uIFN1
biwgMTUgU2VwIDIwMTkgMDc6MjQ6MjAgUERUICgtMDcwMCksIG1hekBrZXJuZWwub3JnIHdyb3Rl
Ogo+Pj4+Pj4gT24gVGh1LCAxMiBTZXAgMjAxOSAyMjo0MDozNCArMDEwMCwKPj4+Pj4+IERhcml1
cyBSYWQgPGRhcml1c0BibHVlc3BlYy5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IEhpIERhcml1
cywKPj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBBcyBwZXIgdGhlIGV4aXN0aW5nIGNvbW1lbnQsIGly
cV9tYXNrIGFuZCBpcnFfdW5tYXNrIGRvIG5vdCBuZWVkCj4+Pj4+Pj4gdG8gZG8gYW55dGhpbmcg
Zm9yIHRoZSBQTElDLsKgIEhvd2V2ZXIsIHRoZSBmdW5jdGlvbnMgbXVzdCBleGlzdAo+Pj4+Pj4+
ICh0aGUgcG9pbnRlcnMgY2Fubm90IGJlIE5VTEwpIGFzIHRoZXkgYXJlIG5vdCBvcHRpb25hbCwg
YmFzZWQgb24KPj4+Pj4+PiB0aGUgZG9jdW1lbnRhdGlvbiAoRG9jdW1lbnRhdGlvbi9jb3JlLWFw
aS9nZW5lcmljaXJxLnJzdCkgYXMgd2VsbAo+Pj4+Pj4+IGFzIGV4aXN0aW5nIHVzYWdlIChlLmcu
LCBpbmNsdWRlL2xpbnV4L2lycWNoaXAvY2hhaW5lZF9pcnEuaCkuCj4+Pj4+Pj4KPj4+Pj4+PiBT
aWduZWQtb2ZmLWJ5OiBEYXJpdXMgUmFkIDxkYXJpdXNAYmx1ZXNwZWMuY29tPgo+Pj4+Pj4+IC0t
LQo+Pj4+Pj4+IMKgZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jIHwgMTMgKysrKysr
KysrLS0tLQo+Pj4+Pj4+IMKgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lycWNoaXAvaXJx
LXNpZml2ZS1wbGljLmMgYi9kcml2ZXJzL2lycWNoaXAvaXJxLXNpZml2ZS1wbGljLmMKPj4+Pj4+
PiBpbmRleCBjZjc1NTk2NGYyZjguLjUyZDUxNjlmOTI0ZiAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9k
cml2ZXJzL2lycWNoaXAvaXJxLXNpZml2ZS1wbGljLmMKPj4+Pj4+PiArKysgYi9kcml2ZXJzL2ly
cWNoaXAvaXJxLXNpZml2ZS1wbGljLmMKPj4+Pj4+PiBAQCAtMTExLDYgKzExMSwxMyBAQCBzdGF0
aWMgdm9pZCBwbGljX2lycV9kaXNhYmxlKHN0cnVjdCBpcnFfZGF0YSAqZCkKPj4+Pj4+PiDCoMKg
wqDCoCBwbGljX2lycV90b2dnbGUoY3B1X3Bvc3NpYmxlX21hc2ssIGQtPmh3aXJxLCAwKTsKPj4+
Pj4+PiDCoH0KPj4+Pj4+PiDCoCsvKgo+Pj4+Pj4+ICsgKiBUaGVyZSBpcyBubyBuZWVkIHRvIG1h
c2svdW5tYXNrIFBMSUMgaW50ZXJydXB0cy7CoCBUaGV5IGFyZSAibWFza2VkIgo+Pj4+Pj4+ICsg
KiBieSByZWFkaW5nIGNsYWltIGFuZCAidW5tYXNrZWQiIHdoZW4gd3JpdGluZyBpdCBiYWNrLgo+
Pj4+Pj4+ICsgKi8KPj4+Pj4+PiArc3RhdGljIHZvaWQgcGxpY19pcnFfbWFzayhzdHJ1Y3QgaXJx
X2RhdGEgKmQpIHsgfQo+Pj4+Pj4+ICtzdGF0aWMgdm9pZCBwbGljX2lycV91bm1hc2soc3RydWN0
IGlycV9kYXRhICpkKSB7IH0KPj4+Pj4+Cj4+Pj4+PiBUaGlzIG91dGxpbmVzIGEgYmlnZ2VyIGlz
c3VlLiBJZiB5b3VyIGlycWNoaXAgZG9lc24ndCByZXF1aXJlCj4+Pj4+PiBtYXNrL3VubWFzaywg
eW91J3JlIHByb2JhYmx5IG5vdCB1c2luZyB0aGUgcmlnaHQgaW50ZXJydXB0Cj4+Pj4+PiBmbG93
LiBMb29raW5nIGF0IHRoZSBjb2RlLCBJIHNlZSB5b3UncmUgdXNpbmcgaGFuZGxlX3NpbXBsZV9p
cnEsIHdoaWNoCj4+Pj4+PiBpcyBhbG1vc3QgdW5pdmVyc2FsbHkgd3JvbmcuCj4+Pj4+Pgo+Pj4+
Pj4gQXMgcGVyIHRoZSBkZXNjcmlwdGlvbiBhYm92ZSwgdGhlc2UgaW50ZXJydXB0cyBzaG91bGQg
YmUgdXNpbmcgdGhlCj4+Pj4+PiBmYXN0ZW9pIGZsb3csIHdoaWNoIGlzIGRlc2lnbmVkIGZvciB0
aGlzIGV4YWN0IGJlaGF2aW91ciAodGhlCj4+Pj4+PiBpbnRlcnJ1cHQgY29udHJvbGxlciBrbm93
cyB3aGljaCBpbnRlcnJ1cHQgaXMgaW4gZmxpZ2h0IGFuZCBkb2Vzbid0Cj4+Pj4+PiByZXF1aXJl
IFNXIHRvIGRvIGFueXRoaW5nIGJhciBzaWduYWxsaW5nIHRoZSBFT0kpLgo+Pj4+Pj4KPj4+Pj4+
IEFub3RoZXIgdGhpbmcgaXMgdGhhdCBtYXNrL3VubWFzayB0ZW5kcyB0byBiZSBhIHJlcXVpcmVt
ZW50LCB3aGlsZQo+Pj4+Pj4gZW5hYmxlL2Rpc2FibGUgdGVuZHMgdG8gYmUgb3B0aW9uYWwuIFRo
ZXJlIGlzIG5vIGhhcmQgbGluZSBoZXJlLCBidXQKPj4+Pj4+IHRoZSBleHBlY3RhdGlvbnMgYXJl
IHRoYXQ6Cj4+Pj4+Pgo+Pj4+Pj4gKGEpIEEgZGlzYWJsZWQgbGluZSBjYW4gZHJvcCBpbnRlcnJ1
cHRzCj4+Pj4+PiAoYikgQSBtYXNrZWQgbGluZSBjYW5ub3QgZHJvcCBpbnRlcnJ1cHRzCj4+Pj4+
Pgo+Pj4+Pj4gRGVwZW5kaW5nIHdoYXQgdGhlIFBMSUMgYXJjaGl0ZWN0dXJlIG1hbmRhdGVzLCB5
b3UnbGwgbmVlZCB0bwo+Pj4+Pj4gaW1wbGVtZW50IG9uZSBhbmQvb3IgdGhlIG90aGVyLiBIYXZp
bmcganVzdCAoYSkgaXMgaW5kaWNhdGl2ZSBvZiBhIEhXCj4+Pj4+PiBidWcsIGFuZCBJJ20gbm90
IGFzc3VtaW5nIHRoYXQgdGhpcyBpcyB0aGUgY2FzZS4gKGIpIG9ubHkgaXMgcHJldHR5Cj4+Pj4+
PiBjb21tb24sIGFuZCAoYSkrKGIpIGhhcyBhIGZldyBhZGVwdHMuIE15IGJldCBpcyB0aGF0IGl0
IHJlcXVpcmVzIChiKQo+Pj4+Pj4gb25seS4KPj4+Pj4+Cj4+Pj4+Pj4gKwo+Pj4+Pj4+IMKgI2lm
ZGVmIENPTkZJR19TTVAKPj4+Pj4+PiDCoHN0YXRpYyBpbnQgcGxpY19zZXRfYWZmaW5pdHkoc3Ry
dWN0IGlycV9kYXRhICpkLAo+Pj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29uc3Qgc3RydWN0IGNwdW1hc2sgKm1hc2tfdmFsLCBib29sIGZvcmNlKQo+Pj4+Pj4+IEBA
IC0xMzgsMTIgKzE0NSwxMCBAQCBzdGF0aWMgaW50IHBsaWNfc2V0X2FmZmluaXR5KHN0cnVjdCBp
cnFfZGF0YSAqZCwKPj4+Pj4+PiDCoCBzdGF0aWMgc3RydWN0IGlycV9jaGlwIHBsaWNfY2hpcCA9
IHsKPj4+Pj4+PiDCoMKgwqDCoCAubmFtZcKgwqDCoMKgwqDCoMKgID0gIlNpRml2ZSBQTElDIiwK
Pj4+Pj4+PiAtwqDCoMKgIC8qCj4+Pj4+Pj4gLcKgwqDCoMKgICogVGhlcmUgaXMgbm8gbmVlZCB0
byBtYXNrL3VubWFzayBQTElDIGludGVycnVwdHMuwqAgVGhleSBhcmUgIm1hc2tlZCIKPj4+Pj4+
PiAtwqDCoMKgwqAgKiBieSByZWFkaW5nIGNsYWltIGFuZCAidW5tYXNrZWQiIHdoZW4gd3JpdGlu
ZyBpdCBiYWNrLgo+Pj4+Pj4+IC3CoMKgwqDCoCAqLwo+Pj4+Pj4+IMKgwqDCoMKgIC5pcnFfZW5h
YmxlwqDCoMKgID0gcGxpY19pcnFfZW5hYmxlLAo+Pj4+Pj4+IMKgwqDCoMKgIC5pcnFfZGlzYWJs
ZcKgwqDCoCA9IHBsaWNfaXJxX2Rpc2FibGUsCj4+Pj4+Pj4gK8KgwqDCoCAuaXJxX21hc2vCoMKg
wqAgPSBwbGljX2lycV9tYXNrLAo+Pj4+Pj4+ICvCoMKgwqAgLmlycV91bm1hc2vCoMKgwqAgPSBw
bGljX2lycV91bm1hc2ssCj4+Pj4+Pj4gwqAjaWZkZWYgQ09ORklHX1NNUAo+Pj4+Pj4+IMKgwqDC
oMKgIC5pcnFfc2V0X2FmZmluaXR5ID0gcGxpY19zZXRfYWZmaW5pdHksCj4+Pj4+Pj4gwqAjZW5k
aWYKPj4+Pj4+Cj4+Pj4+PiBDYW4geW91IGdpdmUgdGhlIGZvbGxvd2luZyBwYXRjaCBhIGdvPyBJ
dCBicmluZ3MgdGhlIGlycSBmbG93IGluIGxpbmUKPj4+Pj4+IHdpdGggd2hhdCB0aGUgSFcgY2Fu
IGRvLiBJdCBpcyBvZiBjb3Vyc2UgZnVsbHkgdW50ZXN0ZWQgKG5vdCBldmVuCj4+Pj4+PiBjb21w
aWxlIHRlc3RlZC4uLikuCj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzLAo+Pj4+Pj4KPj4+Pj4+IMKgwqDC
oMKgTS4KPj4+Pj4+Cj4+Pj4+PiBGcm9tIGMwY2UzM2E5OTJlYzE4ZjVkM2JhYzdmNzBkZTYyYjFi
YTJiNDIwOTAgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4+Pj4+PiBGcm9tOiBNYXJjIFp5bmdp
ZXIgPG1hekBrZXJuZWwub3JnPgo+Pj4+Pj4gRGF0ZTogU3VuLCAxNSBTZXAgMjAxOSAxNToxNzo0
NSArMDEwMAo+Pj4+Pj4gU3ViamVjdDogW1BBVENIXSBpcnFjaGlwL3NpZml2ZS1wbGljOiBTd2l0
Y2ggdG8gZmFzdGVvaSBmbG93Cj4+Pj4+Pgo+Pj4+Pj4gVGhlIFNpRml2ZSBQTElDIGludGVycnVw
dCBjb250cm9sbGVyIHNlZW1zIHRvIGhhdmUgYWxsIHRoZSBIVwo+Pj4+Pj4gZmVhdHVyZXMgdG8g
c3VwcG9ydCB0aGUgZmFzdGVvaSBmbG93LCBidXQgdGhlIGRyaXZlciBzZWVtcyB0byBiZQo+Pj4+
Pj4gc3R1Y2sgaW4gYSBkaXN0YW50IHBhc3QuIEJyaW5nIGl0IGludG8gdGhlIDIxc3QgY2VudHVy
eS4KPj4+Pj4KPj4+Pj4gVGhhbmtzLsKgIFdlJ2QgZ290dGVuIHRoZXNlIGNvbW1lbnRzIGR1cmlu
ZyB0aGUgcmV2aWV3IHByb2Nlc3MgYnV0Cj4+Pj4+IG5vYm9keSBoYWQgZ290dGVuIHRoZSB0aW1l
IHRvIGFjdHVhbGx5IGZpeCB0aGUgaXNzdWVzLgo+Pj4+Cj4+Pj4gTm8gd29ycmllcy4gVGhlIElS
USBzdWJzeXN0ZW0gaXMgYW4gYWNxdWlyZWQgdGFzdGUuLi4gOy0pCj4+Pj4KPj4+Pj4+Cj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+Pj4+Pj4gLS0t
Cj4+Pj4+PiDCoGRyaXZlcnMvaXJxY2hpcC9pcnEtc2lmaXZlLXBsaWMuYyB8IDI5ICsrKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLS0tCj4+Pj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jIGIvZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUt
cGxpYy5jCj4+Pj4+PiBpbmRleCBjZjc1NTk2NGYyZjguLjhmZWEzODRkMzkyYiAxMDA2NDQKPj4+
Pj4+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtc2lmaXZlLXBsaWMuYwo+Pj4+Pj4gKysrIGIv
ZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jCj4+Pj4+PiBAQCAtOTcsNyArOTcsNyBA
QCBzdGF0aWMgaW5saW5lIHZvaWQgcGxpY19pcnFfdG9nZ2xlKGNvbnN0IHN0cnVjdCBjcHVtYXNr
ICptYXNrLAo+Pj4+Pj4gwqDCoMKgwqAgfQo+Pj4+Pj4gwqB9Cj4+Pj4+PiDCoC1zdGF0aWMgdm9p
ZCBwbGljX2lycV9lbmFibGUoc3RydWN0IGlycV9kYXRhICpkKQo+Pj4+Pj4gK3N0YXRpYyB2b2lk
IHBsaWNfaXJxX21hc2soc3RydWN0IGlycV9kYXRhICpkKQo+Pj4+Cj4+Pj4gT2YgY291cnNlLCB0
aGlzIGlzIHdyb25nLiBUaGUgcGVya3Mgb2YgdHJ5aW5nIHRvIGRvIHNvbWV0aGluZyBhdCB0aGUK
Pj4+PiBsYXN0IG1pbnV0ZSB3aGlsZSBib2FyZGluZyBhbiBhaXJwbGFuZS4gRG9uJ3QgZG8gdGhh
dC4KPj4+Pgo+Pj4+IFRoaXMgc2hvdWxkIG9mIGNvdXJzZSByZWFkICJwbGljX2lycV91bm1hc2si
Li4uCj4+Pj4KPj4+Pj4+IMKgewo+Pj4+Pj4gwqDCoMKgwqAgdW5zaWduZWQgaW50IGNwdSA9IGNw
dW1hc2tfYW55X2FuZChpcnFfZGF0YV9nZXRfYWZmaW5pdHlfbWFzayhkKSwKPj4+Pj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3B1X29ubGluZV9tYXNr
KTsKPj4+Pj4+IEBAIC0xMDYsNyArMTA2LDcgQEAgc3RhdGljIHZvaWQgcGxpY19pcnFfZW5hYmxl
KHN0cnVjdCBpcnFfZGF0YSAqZCkKPj4+Pj4+IMKgwqDCoMKgIHBsaWNfaXJxX3RvZ2dsZShjcHVt
YXNrX29mKGNwdSksIGQtPmh3aXJxLCAxKTsKPj4+Pj4+IMKgfQo+Pj4+Pj4gwqAtc3RhdGljIHZv
aWQgcGxpY19pcnFfZGlzYWJsZShzdHJ1Y3QgaXJxX2RhdGEgKmQpCj4+Pj4+PiArc3RhdGljIHZv
aWQgcGxpY19pcnFfdW5tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkKPj4+Pgo+Pj4+IC4uLiBhbmQg
dGhpcyBzaG91bGQgYmUgInBsaWNfaXJxX21hc2siLgo+Pj4+Cj4+Pj4gWy4uLl0KPj4+Pgo+Pj4+
PiBSZXZpZXdlZC1ieTogUGFsbWVyIERhYmJlbHQgPHBhbG1lckBzaWZpdmUuY29tPgo+Pj4+PiBU
ZXN0ZWQtYnk6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lmaXZlLmNvbT4gKFFFTVUgQm9vdCkK
Pj4+Pgo+Pj4+IEh1aHVoLi4uIEl0IG1heSBiZSB0aGF0IFFFTVUgZG9lc24ndCBpbXBsZW1lbnQg
dGhlIGZ1bGwtZmF0IFBMSUMsIGFzCj4+Pj4gdGhlIGFib3ZlIGJ1ZyBzaG91bGQgaGF2ZSBrZXB0
IHRoZSBJUlEgbGluZXMgbWFza2VkLgo+Pj4+Cj4+Pj4+IFdlIHNob3VsZCB0ZXN0IHRoZW0gb24g
dGhlIGhhcmR3YXJlLCBidXQgSSBkb24ndCBoYXZlIGFueSB3aXRoIG1lCj4+Pj4+IHJpZ2h0IG5v
dy7CoCBEYXZpZCdzIHByb2JhYmx5IGluIHRoZSBiZXN0IHNwb3QgdG8gZG8gdGhpcywgYXMgaGUn
cyBnb3QKPj4+Pj4gYSBzZXR1cCB0aGF0IGRvZXMgYWxsIHRoZSB3ZWlyZCBpbnRlcnJ1cHQgc291
cmNlcyAoaWUsIFBDSWUpLgo+Pj4+Pgo+Pj4+PiBEYXZpZDogZG8geW91IG1pbmQgdGVzdGluZyB0
aGlzP8KgIEkndmUgcHV0IHRoZSBwYXRjaCBoZXJlOgo+Pj4+Pgo+Pj4+PiDCoMKgIHNzaDovL2dp
dG9saXRlLmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3BhbG1lci9saW51eC5n
aXQKPj4+Pj4gwqDCoCAtYiBwbGljLWZhc3Rlb2kKPj4+Pgo+Pj4+IEkndmUgcHVzaGVkIG91dCBh
IGJyYW5jaCB3aXRoIHRoZSBmaXhlZCBwYXRjaDoKPj4+Pgo+Pj4+IGdpdDovL2dpdC5rZXJuZWwu
b3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tYXovYXJtLXBsYXRmb3Jtcy5naXQgaXJxL3Bs
aWMtZmFzdGVvaQo+Pj4+Cj4+Pgo+Pj4gVGhhdCBwYXRjaCB3b3JrcyBmb3IgbWUgb24gcmVhbC1p
c2ggaGFyZHdhcmUuwqAgSSB0cmllZCBvbiB0d28gRlBHQQo+Pj4gc3lzdGVtcyB0aGF0IGhhdmUg
ZGlmZmVyZW50IFBMSUMgaW1wbGVtZW50YXRpb25zLsKgIEJvdGggaW5jbHVkZQo+Pj4gYSBQQ0ll
IHJvb3QgcG9ydCAoYW5kIGFzc29jaWF0ZWQgaW50ZXJydXB0IHNvdXJjZSkuwqAgU28gZm9yCj4+
PiB3aGF0ZXZlciBpdCdzIHdvcnRoOgo+Pj4KPj4+IFRlc3RlZC1ieTogRGFyaXVzIFJhZCA8ZGFy
aXVzQGJsdWVzcGVjLmNvbT4KPj4KPj4gQXdlc29tZSwgdGhhbmtzLsKgIFdvdWxkIGl0IGJlIE9L
IHRvIHB1dCBhICIob24gdHdvIGhhcmR3YXJlIFBMSUMgaW1wbGVtZW50YXRpb25zKSIgYWZ0ZXIg
dGhhdCwganVzdCBzbyB3ZSdyZSBjbGVhciBhcyB0byB3aG8gdGVzdGVkIHdoYXQ/Cj4KPiBGaW5l
IGJ5IG1lLgo+Cj4+Cj4+IEFzc3VtaW5nIG9uZSBvZiB5b3VycyB3YXNuJ3QgYSBTaUZpdmUgUExJ
QyB0aGVuIGl0J2QgYmUgZ3JlYXQgaWYgRGF2aWQgY291bGQgc3RpbGwgZ2l2ZSB0aGlzIGEgd2hh
Y2ssIGJ1dCBJIGRvbid0IHRoaW5rIGl0IHN0cmljdGx5IG5lZWRzIHRvIGJsb2NrIG1lcmdpbmcg
dGhlIHBhdGNoLsKgIEkndmUgaW5jbHVkZWQgdGhlIHJpZ2h0IERhdmlkIHRoaXMgdGltZSwgd2l0
aCBhbnkgbHVjayB0aGF0IHdpbGwgYmUgbW9yZSBmcnVpdGZ1bCA6KQo+Cj4gT25lIG9mIHRoZSBz
eXN0ZW1zIEkgdGVzdGVkIHdhcyBiYXNlZCBvbiByb2NrZXQtY2hpcCwgYW5kIHRoZQo+IGFzc29j
aWF0ZWQgUExJQywgd2hpY2ggSSBndWVzcyBpcyB0aGUgU2lGaXZlIFBMSUMsIHJpZ2h0PyAgQ2Fu
J3QgaHVydAo+IHRvIGhhdmUgbW9yZSB0ZXN0aW5nLCB0aG91Z2guCgpZYSwgdGhhdCdzIG91cnMu
Cgo+Cj4+Cj4+Pgo+Pj4+IFRoYW5rcywKPj4+Pgo+Pj4+IMKgwqDCoMKgTS4KPj4+PgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFp
bGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
