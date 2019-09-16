Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573CFB4355
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 23:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7xBBTTynh3KQ/CfRsQYNt4sZvKp2RSYhNER43II680=; b=jBv9QZThTfKBsg
	rNDZKJ1PydsgjhmGX4AQnBDD9wnSNEuFi8JQJZP/BCOD64lYhXB3RCKKv+pnSTPS6O3AJV9v/atN0
	wiNa3Q9eGoyFBPD9mTuxvVbzWcVfRamT676fg11ggRgV6n/aD3Z9UkyjBLdRQD5NAbn0RuI1qBDYj
	DRGOvKh3jr4CgiwVf1G0bk909gDQDTgaGKBD+P7QWziMa31Nct5AqquBztdXnfHCDuhVUyj22XrI0
	pAO9UFn2SiMVF7nE2UD6nlqIfYUjXubfpDvId74uSGKMId/scxfOqVCvrqb1A6mKDoH0nmBcBgcR6
	F+zMXgIIxLS7ZZz7GYYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9ykH-0007dg-Ec; Mon, 16 Sep 2019 21:41:17 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9ykC-0007cy-1F
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 21:41:13 +0000
Received: by mail-qt1-x843.google.com with SMTP id u40so1718532qth.11
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 14:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bluespec-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=uKEk7pcTQOPJj3RB17gVy4JPb5ypaqKNo8RuaGXS238=;
 b=R3UkWtcNWGujD8fkmMhGIDxxKHLAi6mcm39xmmHICtGEIwpUloFA5VYy2KLevUhPkN
 zG2ACU8l2o6Lai7vdCCpJBa7fS2KhdTT4OqRtXRou7Sxq2XzIJCebXnn+7r4c7Bnud8h
 SzXr6SAQGIRdmP06/3/AJSAwwdqwOqE5SLyZ0Oi9Ef0HlKWCfE2JF92gFDB/qn1DuER3
 70DICIHglL1rbdEIqXq+oHNfI+BVju2pIKCaYdCM/EYY+cjrT4SJ88QoUcrOG5zaufpN
 sL1pHi2V4qdI4QIF5ULY9bfTETsR9EpGO9xV8pXWvKEY2/76gdoeJRRriS0K1OSDMqex
 GGfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=uKEk7pcTQOPJj3RB17gVy4JPb5ypaqKNo8RuaGXS238=;
 b=MpQEeQ3K7NmHEpXwMuOcdpoAl1+tdCgaG4gl/WUqOvzzkZc8I+QhKdUd0gI2N/SaSa
 JYVWhUZKJRTtMqALXRD/YdKRmZehMLTJ7PVNd7IBNUe5PfrrwR9ZTvLiSTO75+1Dy3Hb
 ZWNuu3LtqYX5lFlZJggrGYxURR0x2iRSCF37tTw8Qo4VPZuCjvOH2BJv/UkAF9DA6FzU
 wzCVdRUxMlF7jKSZbERPGsxwwyml/4axcTIiLrtc0mlopMPkJhIfH0CDSR78zi3sxbQO
 SpccskmHJzG5gRtaD5k/aHuyOSyoL8U997G48oP9vPOwRNkUuOkIDFM30oJm45/gSY3M
 djKg==
X-Gm-Message-State: APjAAAVRzH5xVbCqbe+mW2RlKOBO8+8Zw0jhSPzXgIXFTtOlSn1o2HJc
 z5ww00rdxxkfV74U9wIMq+pl
X-Google-Smtp-Source: APXvYqz0NH1/5cvCw+LYXorC5ja42Ctcmhbotja18rZ9eEbBycTJdXZjVgQaGFdaeFlRPYYNwBkL/g==
X-Received: by 2002:a05:6214:4d:: with SMTP id
 c13mr101308qvr.118.1568670069748; 
 Mon, 16 Sep 2019 14:41:09 -0700 (PDT)
Received: from [0.0.0.0] (198-0-189-189-static.hfc.comcastbusiness.net.
 [198.0.189.189])
 by smtp.gmail.com with ESMTPSA id k199sm129948qke.45.2019.09.16.14.41.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 14:41:09 -0700 (PDT)
Subject: Re: [PATCH] irqchip/sifive-plic: add irq_mask and irq_unmask
To: Palmer Dabbelt <palmer@sifive.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>
References: <mhng-df6c7aad-d4fd-4c44-96c8-bf63465e0c97@palmer-si-x1c4>
From: Darius Rad <darius@bluespec.com>
Message-ID: <be21db32-ff5c-b25a-c8d6-af5bbd0c5469@bluespec.com>
Date: Mon, 16 Sep 2019 17:41:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mhng-df6c7aad-d4fd-4c44-96c8-bf63465e0c97@palmer-si-x1c4>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_144112_128576_E53CA871 
X-CRM114-Status: GOOD (  22.00  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jason@lakedaemon.net, maz@kernel.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 tglx@linutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gOS8xNi8xOSA0OjUxIFBNLCBQYWxtZXIgRGFiYmVsdCB3cm90ZToKPiBPbiBNb24sIDE2IFNl
cCAyMDE5IDEyOjA0OjU2IFBEVCAoLTA3MDApLCBEYXJpdXMgUmFkIHdyb3RlOgo+PiBPbiA5LzE1
LzE5IDI6MjAgUE0sIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IE9uIFN1biwgMTUgU2VwIDIwMTkg
MTg6MzE6MzMgKzAxMDAsCj4+PiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNpZml2ZS5jb20+IHdy
b3RlOgo+Pj4KPj4+IEhpIFBhbG1lciwKPj4+Cj4+Pj4KPj4+PiBPbiBTdW4sIDE1IFNlcCAyMDE5
IDA3OjI0OjIwIFBEVCAoLTA3MDApLCBtYXpAa2VybmVsLm9yZyB3cm90ZToKPj4+Pj4gT24gVGh1
LCAxMiBTZXAgMjAxOSAyMjo0MDozNCArMDEwMCwKPj4+Pj4gRGFyaXVzIFJhZCA8ZGFyaXVzQGJs
dWVzcGVjLmNvbT4gd3JvdGU6Cj4+Pj4+Cj4+Pj4+IEhpIERhcml1cywKPj4+Pj4KPj4+Pj4+Cj4+
Pj4+PiBBcyBwZXIgdGhlIGV4aXN0aW5nIGNvbW1lbnQsIGlycV9tYXNrIGFuZCBpcnFfdW5tYXNr
IGRvIG5vdCBuZWVkCj4+Pj4+PiB0byBkbyBhbnl0aGluZyBmb3IgdGhlIFBMSUMuwqAgSG93ZXZl
ciwgdGhlIGZ1bmN0aW9ucyBtdXN0IGV4aXN0Cj4+Pj4+PiAodGhlIHBvaW50ZXJzIGNhbm5vdCBi
ZSBOVUxMKSBhcyB0aGV5IGFyZSBub3Qgb3B0aW9uYWwsIGJhc2VkIG9uCj4+Pj4+PiB0aGUgZG9j
dW1lbnRhdGlvbiAoRG9jdW1lbnRhdGlvbi9jb3JlLWFwaS9nZW5lcmljaXJxLnJzdCkgYXMgd2Vs
bAo+Pj4+Pj4gYXMgZXhpc3RpbmcgdXNhZ2UgKGUuZy4sIGluY2x1ZGUvbGludXgvaXJxY2hpcC9j
aGFpbmVkX2lycS5oKS4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBEYXJpdXMgUmFkIDxk
YXJpdXNAYmx1ZXNwZWMuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4+PiDCoGRyaXZlcnMvaXJxY2hpcC9p
cnEtc2lmaXZlLXBsaWMuYyB8IDEzICsrKysrKysrKy0tLS0KPj4+Pj4+IMKgMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jIGIvZHJpdmVycy9pcnFjaGlw
L2lycS1zaWZpdmUtcGxpYy5jCj4+Pj4+PiBpbmRleCBjZjc1NTk2NGYyZjguLjUyZDUxNjlmOTI0
ZiAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvaXJxY2hpcC9pcnEtc2lmaXZlLXBsaWMuYwo+
Pj4+Pj4gKysrIGIvZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jCj4+Pj4+PiBAQCAt
MTExLDYgKzExMSwxMyBAQCBzdGF0aWMgdm9pZCBwbGljX2lycV9kaXNhYmxlKHN0cnVjdCBpcnFf
ZGF0YSAqZCkKPj4+Pj4+IMKgwqDCoMKgIHBsaWNfaXJxX3RvZ2dsZShjcHVfcG9zc2libGVfbWFz
aywgZC0+aHdpcnEsIDApOwo+Pj4+Pj4gwqB9Cj4+Pj4+PiDCoCsvKgo+Pj4+Pj4gKyAqIFRoZXJl
IGlzIG5vIG5lZWQgdG8gbWFzay91bm1hc2sgUExJQyBpbnRlcnJ1cHRzLsKgIFRoZXkgYXJlICJt
YXNrZWQiCj4+Pj4+PiArICogYnkgcmVhZGluZyBjbGFpbSBhbmQgInVubWFza2VkIiB3aGVuIHdy
aXRpbmcgaXQgYmFjay4KPj4+Pj4+ICsgKi8KPj4+Pj4+ICtzdGF0aWMgdm9pZCBwbGljX2lycV9t
YXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkgeyB9Cj4+Pj4+PiArc3RhdGljIHZvaWQgcGxpY19pcnFf
dW5tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkgeyB9Cj4+Pj4+Cj4+Pj4+IFRoaXMgb3V0bGluZXMg
YSBiaWdnZXIgaXNzdWUuIElmIHlvdXIgaXJxY2hpcCBkb2Vzbid0IHJlcXVpcmUKPj4+Pj4gbWFz
ay91bm1hc2ssIHlvdSdyZSBwcm9iYWJseSBub3QgdXNpbmcgdGhlIHJpZ2h0IGludGVycnVwdAo+
Pj4+PiBmbG93LiBMb29raW5nIGF0IHRoZSBjb2RlLCBJIHNlZSB5b3UncmUgdXNpbmcgaGFuZGxl
X3NpbXBsZV9pcnEsIHdoaWNoCj4+Pj4+IGlzIGFsbW9zdCB1bml2ZXJzYWxseSB3cm9uZy4KPj4+
Pj4KPj4+Pj4gQXMgcGVyIHRoZSBkZXNjcmlwdGlvbiBhYm92ZSwgdGhlc2UgaW50ZXJydXB0cyBz
aG91bGQgYmUgdXNpbmcgdGhlCj4+Pj4+IGZhc3Rlb2kgZmxvdywgd2hpY2ggaXMgZGVzaWduZWQg
Zm9yIHRoaXMgZXhhY3QgYmVoYXZpb3VyICh0aGUKPj4+Pj4gaW50ZXJydXB0IGNvbnRyb2xsZXIg
a25vd3Mgd2hpY2ggaW50ZXJydXB0IGlzIGluIGZsaWdodCBhbmQgZG9lc24ndAo+Pj4+PiByZXF1
aXJlIFNXIHRvIGRvIGFueXRoaW5nIGJhciBzaWduYWxsaW5nIHRoZSBFT0kpLgo+Pj4+Pgo+Pj4+
PiBBbm90aGVyIHRoaW5nIGlzIHRoYXQgbWFzay91bm1hc2sgdGVuZHMgdG8gYmUgYSByZXF1aXJl
bWVudCwgd2hpbGUKPj4+Pj4gZW5hYmxlL2Rpc2FibGUgdGVuZHMgdG8gYmUgb3B0aW9uYWwuIFRo
ZXJlIGlzIG5vIGhhcmQgbGluZSBoZXJlLCBidXQKPj4+Pj4gdGhlIGV4cGVjdGF0aW9ucyBhcmUg
dGhhdDoKPj4+Pj4KPj4+Pj4gKGEpIEEgZGlzYWJsZWQgbGluZSBjYW4gZHJvcCBpbnRlcnJ1cHRz
Cj4+Pj4+IChiKSBBIG1hc2tlZCBsaW5lIGNhbm5vdCBkcm9wIGludGVycnVwdHMKPj4+Pj4KPj4+
Pj4gRGVwZW5kaW5nIHdoYXQgdGhlIFBMSUMgYXJjaGl0ZWN0dXJlIG1hbmRhdGVzLCB5b3UnbGwg
bmVlZCB0bwo+Pj4+PiBpbXBsZW1lbnQgb25lIGFuZC9vciB0aGUgb3RoZXIuIEhhdmluZyBqdXN0
IChhKSBpcyBpbmRpY2F0aXZlIG9mIGEgSFcKPj4+Pj4gYnVnLCBhbmQgSSdtIG5vdCBhc3N1bWlu
ZyB0aGF0IHRoaXMgaXMgdGhlIGNhc2UuIChiKSBvbmx5IGlzIHByZXR0eQo+Pj4+PiBjb21tb24s
IGFuZCAoYSkrKGIpIGhhcyBhIGZldyBhZGVwdHMuIE15IGJldCBpcyB0aGF0IGl0IHJlcXVpcmVz
IChiKQo+Pj4+PiBvbmx5Lgo+Pj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gwqAjaWZkZWYgQ09ORklHX1NN
UAo+Pj4+Pj4gwqBzdGF0aWMgaW50IHBsaWNfc2V0X2FmZmluaXR5KHN0cnVjdCBpcnFfZGF0YSAq
ZCwKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0
IGNwdW1hc2sgKm1hc2tfdmFsLCBib29sIGZvcmNlKQo+Pj4+Pj4gQEAgLTEzOCwxMiArMTQ1LDEw
IEBAIHN0YXRpYyBpbnQgcGxpY19zZXRfYWZmaW5pdHkoc3RydWN0IGlycV9kYXRhICpkLAo+Pj4+
Pj4gwqAgc3RhdGljIHN0cnVjdCBpcnFfY2hpcCBwbGljX2NoaXAgPSB7Cj4+Pj4+PiDCoMKgwqDC
oCAubmFtZcKgwqDCoMKgwqDCoMKgID0gIlNpRml2ZSBQTElDIiwKPj4+Pj4+IC3CoMKgwqAgLyoK
Pj4+Pj4+IC3CoMKgwqDCoCAqIFRoZXJlIGlzIG5vIG5lZWQgdG8gbWFzay91bm1hc2sgUExJQyBp
bnRlcnJ1cHRzLsKgIFRoZXkgYXJlICJtYXNrZWQiCj4+Pj4+PiAtwqDCoMKgwqAgKiBieSByZWFk
aW5nIGNsYWltIGFuZCAidW5tYXNrZWQiIHdoZW4gd3JpdGluZyBpdCBiYWNrLgo+Pj4+Pj4gLcKg
wqDCoMKgICovCj4+Pj4+PiDCoMKgwqDCoCAuaXJxX2VuYWJsZcKgwqDCoCA9IHBsaWNfaXJxX2Vu
YWJsZSwKPj4+Pj4+IMKgwqDCoMKgIC5pcnFfZGlzYWJsZcKgwqDCoCA9IHBsaWNfaXJxX2Rpc2Fi
bGUsCj4+Pj4+PiArwqDCoMKgIC5pcnFfbWFza8KgwqDCoCA9IHBsaWNfaXJxX21hc2ssCj4+Pj4+
PiArwqDCoMKgIC5pcnFfdW5tYXNrwqDCoMKgID0gcGxpY19pcnFfdW5tYXNrLAo+Pj4+Pj4gwqAj
aWZkZWYgQ09ORklHX1NNUAo+Pj4+Pj4gwqDCoMKgwqAgLmlycV9zZXRfYWZmaW5pdHkgPSBwbGlj
X3NldF9hZmZpbml0eSwKPj4+Pj4+IMKgI2VuZGlmCj4+Pj4+Cj4+Pj4+IENhbiB5b3UgZ2l2ZSB0
aGUgZm9sbG93aW5nIHBhdGNoIGEgZ28/IEl0IGJyaW5ncyB0aGUgaXJxIGZsb3cgaW4gbGluZQo+
Pj4+PiB3aXRoIHdoYXQgdGhlIEhXIGNhbiBkby4gSXQgaXMgb2YgY291cnNlIGZ1bGx5IHVudGVz
dGVkIChub3QgZXZlbgo+Pj4+PiBjb21waWxlIHRlc3RlZC4uLikuCj4+Pj4+Cj4+Pj4+IFRoYW5r
cywKPj4+Pj4KPj4+Pj4gwqDCoMKgwqBNLgo+Pj4+Pgo+Pj4+PiBGcm9tIGMwY2UzM2E5OTJlYzE4
ZjVkM2JhYzdmNzBkZTYyYjFiYTJiNDIwOTAgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4+Pj4+
IEZyb206IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+Pj4+IERhdGU6IFN1biwgMTUg
U2VwIDIwMTkgMTU6MTc6NDUgKzAxMDAKPj4+Pj4gU3ViamVjdDogW1BBVENIXSBpcnFjaGlwL3Np
Zml2ZS1wbGljOiBTd2l0Y2ggdG8gZmFzdGVvaSBmbG93Cj4+Pj4+Cj4+Pj4+IFRoZSBTaUZpdmUg
UExJQyBpbnRlcnJ1cHQgY29udHJvbGxlciBzZWVtcyB0byBoYXZlIGFsbCB0aGUgSFcKPj4+Pj4g
ZmVhdHVyZXMgdG8gc3VwcG9ydCB0aGUgZmFzdGVvaSBmbG93LCBidXQgdGhlIGRyaXZlciBzZWVt
cyB0byBiZQo+Pj4+PiBzdHVjayBpbiBhIGRpc3RhbnQgcGFzdC4gQnJpbmcgaXQgaW50byB0aGUg
MjFzdCBjZW50dXJ5Lgo+Pj4+Cj4+Pj4gVGhhbmtzLsKgIFdlJ2QgZ290dGVuIHRoZXNlIGNvbW1l
bnRzIGR1cmluZyB0aGUgcmV2aWV3IHByb2Nlc3MgYnV0Cj4+Pj4gbm9ib2R5IGhhZCBnb3R0ZW4g
dGhlIHRpbWUgdG8gYWN0dWFsbHkgZml4IHRoZSBpc3N1ZXMuCj4+Pgo+Pj4gTm8gd29ycmllcy4g
VGhlIElSUSBzdWJzeXN0ZW0gaXMgYW4gYWNxdWlyZWQgdGFzdGUuLi4gOy0pCj4+Pgo+Pj4+Pgo+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+Pj4+PiAt
LS0KPj4+Pj4gwqBkcml2ZXJzL2lycWNoaXAvaXJxLXNpZml2ZS1wbGljLmMgfCAyOSArKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tLQo+Pj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
aXJxY2hpcC9pcnEtc2lmaXZlLXBsaWMuYyBiL2RyaXZlcnMvaXJxY2hpcC9pcnEtc2lmaXZlLXBs
aWMuYwo+Pj4+PiBpbmRleCBjZjc1NTk2NGYyZjguLjhmZWEzODRkMzkyYiAxMDA2NDQKPj4+Pj4g
LS0tIGEvZHJpdmVycy9pcnFjaGlwL2lycS1zaWZpdmUtcGxpYy5jCj4+Pj4+ICsrKyBiL2RyaXZl
cnMvaXJxY2hpcC9pcnEtc2lmaXZlLXBsaWMuYwo+Pj4+PiBAQCAtOTcsNyArOTcsNyBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgcGxpY19pcnFfdG9nZ2xlKGNvbnN0IHN0cnVjdCBjcHVtYXNrICptYXNr
LAo+Pj4+PiDCoMKgwqDCoCB9Cj4+Pj4+IMKgfQo+Pj4+PiDCoC1zdGF0aWMgdm9pZCBwbGljX2ly
cV9lbmFibGUoc3RydWN0IGlycV9kYXRhICpkKQo+Pj4+PiArc3RhdGljIHZvaWQgcGxpY19pcnFf
bWFzayhzdHJ1Y3QgaXJxX2RhdGEgKmQpCj4+Pgo+Pj4gT2YgY291cnNlLCB0aGlzIGlzIHdyb25n
LiBUaGUgcGVya3Mgb2YgdHJ5aW5nIHRvIGRvIHNvbWV0aGluZyBhdCB0aGUKPj4+IGxhc3QgbWlu
dXRlIHdoaWxlIGJvYXJkaW5nIGFuIGFpcnBsYW5lLiBEb24ndCBkbyB0aGF0Lgo+Pj4KPj4+IFRo
aXMgc2hvdWxkIG9mIGNvdXJzZSByZWFkICJwbGljX2lycV91bm1hc2siLi4uCj4+Pgo+Pj4+PiDC
oHsKPj4+Pj4gwqDCoMKgwqAgdW5zaWduZWQgaW50IGNwdSA9IGNwdW1hc2tfYW55X2FuZChpcnFf
ZGF0YV9nZXRfYWZmaW5pdHlfbWFzayhkKSwKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcHVfb25saW5lX21hc2spOwo+Pj4+PiBAQCAtMTA2LDcg
KzEwNiw3IEBAIHN0YXRpYyB2b2lkIHBsaWNfaXJxX2VuYWJsZShzdHJ1Y3QgaXJxX2RhdGEgKmQp
Cj4+Pj4+IMKgwqDCoMKgIHBsaWNfaXJxX3RvZ2dsZShjcHVtYXNrX29mKGNwdSksIGQtPmh3aXJx
LCAxKTsKPj4+Pj4gwqB9Cj4+Pj4+IMKgLXN0YXRpYyB2b2lkIHBsaWNfaXJxX2Rpc2FibGUoc3Ry
dWN0IGlycV9kYXRhICpkKQo+Pj4+PiArc3RhdGljIHZvaWQgcGxpY19pcnFfdW5tYXNrKHN0cnVj
dCBpcnFfZGF0YSAqZCkKPj4+Cj4+PiAuLi4gYW5kIHRoaXMgc2hvdWxkIGJlICJwbGljX2lycV9t
YXNrIi4KPj4+Cj4+PiBbLi4uXQo+Pj4KPj4+PiBSZXZpZXdlZC1ieTogUGFsbWVyIERhYmJlbHQg
PHBhbG1lckBzaWZpdmUuY29tPgo+Pj4+IFRlc3RlZC1ieTogUGFsbWVyIERhYmJlbHQgPHBhbG1l
ckBzaWZpdmUuY29tPiAoUUVNVSBCb290KQo+Pj4KPj4+IEh1aHVoLi4uIEl0IG1heSBiZSB0aGF0
IFFFTVUgZG9lc24ndCBpbXBsZW1lbnQgdGhlIGZ1bGwtZmF0IFBMSUMsIGFzCj4+PiB0aGUgYWJv
dmUgYnVnIHNob3VsZCBoYXZlIGtlcHQgdGhlIElSUSBsaW5lcyBtYXNrZWQuCj4+Pgo+Pj4+IFdl
IHNob3VsZCB0ZXN0IHRoZW0gb24gdGhlIGhhcmR3YXJlLCBidXQgSSBkb24ndCBoYXZlIGFueSB3
aXRoIG1lCj4+Pj4gcmlnaHQgbm93LsKgIERhdmlkJ3MgcHJvYmFibHkgaW4gdGhlIGJlc3Qgc3Bv
dCB0byBkbyB0aGlzLCBhcyBoZSdzIGdvdAo+Pj4+IGEgc2V0dXAgdGhhdCBkb2VzIGFsbCB0aGUg
d2VpcmQgaW50ZXJydXB0IHNvdXJjZXMgKGllLCBQQ0llKS4KPj4+Pgo+Pj4+IERhdmlkOiBkbyB5
b3UgbWluZCB0ZXN0aW5nIHRoaXM/wqAgSSd2ZSBwdXQgdGhlIHBhdGNoIGhlcmU6Cj4+Pj4KPj4+
PiDCoMKgIHNzaDovL2dpdG9saXRlLmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3BhbG1lci9saW51eC5naXQKPj4+PiDCoMKgIC1iIHBsaWMtZmFzdGVvaQo+Pj4KPj4+IEkndmUg
cHVzaGVkIG91dCBhIGJyYW5jaCB3aXRoIHRoZSBmaXhlZCBwYXRjaDoKPj4+Cj4+PiBnaXQ6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbWF6L2FybS1wbGF0Zm9ybXMu
Z2l0IGlycS9wbGljLWZhc3Rlb2kKPj4+Cj4+Cj4+IFRoYXQgcGF0Y2ggd29ya3MgZm9yIG1lIG9u
IHJlYWwtaXNoIGhhcmR3YXJlLsKgIEkgdHJpZWQgb24gdHdvIEZQR0EKPj4gc3lzdGVtcyB0aGF0
IGhhdmUgZGlmZmVyZW50IFBMSUMgaW1wbGVtZW50YXRpb25zLsKgIEJvdGggaW5jbHVkZQo+PiBh
IFBDSWUgcm9vdCBwb3J0IChhbmQgYXNzb2NpYXRlZCBpbnRlcnJ1cHQgc291cmNlKS7CoCBTbyBm
b3IKPj4gd2hhdGV2ZXIgaXQncyB3b3J0aDoKPj4KPj4gVGVzdGVkLWJ5OiBEYXJpdXMgUmFkIDxk
YXJpdXNAYmx1ZXNwZWMuY29tPgo+IAo+IEF3ZXNvbWUsIHRoYW5rcy7CoCBXb3VsZCBpdCBiZSBP
SyB0byBwdXQgYSAiKG9uIHR3byBoYXJkd2FyZSBQTElDIGltcGxlbWVudGF0aW9ucykiIGFmdGVy
IHRoYXQsIGp1c3Qgc28gd2UncmUgY2xlYXIgYXMgdG8gd2hvIHRlc3RlZCB3aGF0PwoKRmluZSBi
eSBtZS4KCj4gCj4gQXNzdW1pbmcgb25lIG9mIHlvdXJzIHdhc24ndCBhIFNpRml2ZSBQTElDIHRo
ZW4gaXQnZCBiZSBncmVhdCBpZiBEYXZpZCBjb3VsZCBzdGlsbCBnaXZlIHRoaXMgYSB3aGFjaywg
YnV0IEkgZG9uJ3QgdGhpbmsgaXQgc3RyaWN0bHkgbmVlZHMgdG8gYmxvY2sgbWVyZ2luZyB0aGUg
cGF0Y2guwqAgSSd2ZSBpbmNsdWRlZCB0aGUgcmlnaHQgRGF2aWQgdGhpcyB0aW1lLCB3aXRoIGFu
eSBsdWNrIHRoYXQgd2lsbCBiZSBtb3JlIGZydWl0ZnVsIDopCgpPbmUgb2YgdGhlIHN5c3RlbXMg
SSB0ZXN0ZWQgd2FzIGJhc2VkIG9uIHJvY2tldC1jaGlwLCBhbmQgdGhlCmFzc29jaWF0ZWQgUExJ
Qywgd2hpY2ggSSBndWVzcyBpcyB0aGUgU2lGaXZlIFBMSUMsIHJpZ2h0PyAgQ2FuJ3QgaHVydAp0
byBoYXZlIG1vcmUgdGVzdGluZywgdGhvdWdoLgoKPiAKPj4KPj4+IFRoYW5rcywKPj4+Cj4+PiDC
oMKgwqDCoE0uCj4+PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
aXNjdgo=
