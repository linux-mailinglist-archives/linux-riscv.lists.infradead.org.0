Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F11E975D7
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 11:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tTiifXq8dBsNVeJL6wSKepR4FANR7Qwh2YF+IZedU6A=; b=D47xaAkaXhtNGu
	1ZV3PCKgrFsfKdCDK9Q45h+inMMclBml2BBlaL5RbTtmWCIGPmuGFIKFS3lhIPRTMrm6gzHNXZ19T
	bjsjQmRDS3t1m2FQMafbUdDwqvVzyw4YTMCz14zcKRkzH370a3g4ybnTcLcaKuFx6tz4vhG+wZOr9
	CX2bRgT8I2RLhok7iaaJPC9bkHX7k05p6TfK7pCaMSwfIlNO6i4ZxsgLozwJ2j1lW0ICeRG3q1WMI
	T8oRHRLfL1QdAp7jPgncEvYXc8PdQiEHsSWe41J92WLHR4tW2cHYDmrhui6INr6NGIMDMnPZ5rOpF
	4bq3v0SUxk/Yv4q1zaZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Mkt-0005Ze-6P; Wed, 21 Aug 2019 09:18:11 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Mjc-0005QC-T3
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 09:17:04 +0000
Received: by mail-qk1-x742.google.com with SMTP id 125so1189595qkl.6
 for <linux-riscv@lists.infradead.org>; Wed, 21 Aug 2019 02:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1QRYDqooKQHuUqRGCmS19leZIGl6bRizM+3I8whQhcQ=;
 b=SjB1S6nk40lIfA80YLg3MaxW1PPIqSOZtvemM93SZaCc5b++TcGMboXvNxFORLvnTQ
 2MQXpvPONs9iChZVYYnmLyI3avbWT5l9A1pQpYtMGpKf47RX5JazF+Z0I10pWRoxbPm2
 xO8SJjgUExs8wFhfjKf2i9vvHc7v0L4p/txal/QNYEj7jPDVQu/gXE/1lq5Ay1c49lCI
 yCO1dOEPQhP634ibcVOKeAnuP8ZuwVhM4xG6CA2XcjyoMlHmiglKhPnTSTGG8otnZZZN
 9hZOSr2BI6mntWopbVJOV0upftyOZqb6B/R8hJBVp3OpdoIXFo2Rw5hqi2Y9bfmSJKjy
 dRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1QRYDqooKQHuUqRGCmS19leZIGl6bRizM+3I8whQhcQ=;
 b=BPr195y+ZZlo1dYByao85DY9/pf67lC6ahip4dcaOlzW2/1LDkRYFiVlj7MqcprYOV
 mZWldpxbufRud/JnL2/xvxF9B/SOj+VWUxz/OKP2x3JvAYEcSYvAq/W0FTUqZ2F0efBe
 EuYy4CFPhaC90lMVYi+8Dbe+1MGik6FwfevTdppRqOEZ9I4tBts1XtU/SHunXAEoquGP
 BYWvxVyzeAvBrtSM0oKbRMgiJZyH8RGoUDN7X4GRHlWmKVamlrV+F6PAvhLf72Sg7yI6
 RhYxv16wX2O7rnV4W11jFqG+RQmRwA7+Z0ijGM3HIvU69WQmWV6XicHR/ukDt+gYG6WY
 dMVw==
X-Gm-Message-State: APjAAAVrOBGrD6v1+dqLtjdq9vvnhTBRDO6/WJcoEo5qLPn8ScgcUB47
 sKfmSKOYOfJTy2+lHDGMeKtwvWC3MPYCtGUSJJCl2jMfBbI=
X-Google-Smtp-Source: APXvYqxueI2CvpCpcHnyAvd/xbaVVqWugVLgBH6/w1evVP3qmYFPu/qLSr/S4GHaY9KPCmFffu1HwCLsEsKOr1Bje3o=
X-Received: by 2002:a37:6397:: with SMTP id x145mr28742727qkb.56.1566379009816; 
 Wed, 21 Aug 2019 02:16:49 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1566290744.git.han_mao@c-sky.com>
 <820d80272fc5627b8d00e684663a614470217606.1566290744.git.han_mao@c-sky.com>
In-Reply-To: <820d80272fc5627b8d00e684663a614470217606.1566290744.git.han_mao@c-sky.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Wed, 21 Aug 2019 17:16:13 +0800
Message-ID: <CAEbi=3cBu8pbHZQk9ff79DLzHurKTSAwABEfW3aT=v-1brqppg@mail.gmail.com>
Subject: Re: [PATCH V4 1/3] riscv: Add perf callchain support
To: Mao Han <han_mao@c-sky.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_021701_039803_48E11A4E 
X-CRM114-Status: GOOD (  26.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTWFvLAoKTWFvIEhhbiA8aGFuX21hb0BjLXNreS5jb20+IOaWvCAyMDE55bm0OOaciDIw5pel
IOmAseS6jCDkuIvljYg0OjU35a+r6YGT77yaCj4KPiBUaGlzIHBhdGNoIGFkZCBzdXBwb3J0IGZv
ciBwZXJmIGNhbGxjaGFpbiBzYW1wbGluZyBvbiByaXNjdiBwbGF0Zm9ybS4KPiBUaGUgcmV0dXJu
IGFkZHJlc3Mgb2YgbGVhZiBmdW5jdGlvbiBpcyByZXRyaWV2ZWQgZnJvbSBwdF9yZWdzIGFzCj4g
aXQgaXMgbm90IHNhdmVkIGluIHRoZSBvdXRtb3N0IGZyYW1lLgo+Cj4gU2lnbmVkLW9mZi1ieTog
TWFvIEhhbiA8aGFuX21hb0BjLXNreS5jb20+Cj4gQ2M6IFBhdWwgV2FsbXNsZXkgPHBhdWwud2Fs
bXNsZXlAc2lmaXZlLmNvbT4KPiBDYzogR3JlZW50aW1lIEh1IDxncmVlbi5odUBnbWFpbC5jb20+
Cj4gQ2M6IFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lmaXZlLmNvbT4KPiBDYzogbGludXgtcmlz
Y3YgPGxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4gQ2M6IENocmlzdG9waCBIZWxs
d2lnIDxoY2hAbHN0LmRlPgo+IENjOiBHdW8gUmVuIDxndW9yZW5Aa2VybmVsLm9yZz4KPiAtLS0K
PiAgYXJjaC9yaXNjdi9NYWtlZmlsZSAgICAgICAgICAgICAgICB8ICAgMyArCj4gIGFyY2gvcmlz
Y3Yva2VybmVsL01ha2VmaWxlICAgICAgICAgfCAgIDMgKy0KPiAgYXJjaC9yaXNjdi9rZXJuZWwv
cGVyZl9jYWxsY2hhaW4uYyB8IDExNSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTIwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcmlzY3Yva2VybmVsL3BlcmZfY2FsbGNoYWluLmMK
Pgo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L01ha2VmaWxlIGIvYXJjaC9yaXNjdi9NYWtlZmls
ZQo+IGluZGV4IDdhMTE3YmUuLjk0NjU2NWIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9NYWtl
ZmlsZQo+ICsrKyBiL2FyY2gvcmlzY3YvTWFrZWZpbGUKPiBAQCAtNTQsNiArNTQsOSBAQCBlbmRp
Zgo+ICBpZmVxICgkKENPTkZJR19NT0RVTEVfU0VDVElPTlMpLHkpCj4gICAgICAgICBLQlVJTERf
TERGTEFHU19NT0RVTEUgKz0gLVQgJChzcmN0cmVlKS9hcmNoL3Jpc2N2L2tlcm5lbC9tb2R1bGUu
bGRzCj4gIGVuZGlmCj4gK2lmZXEgKCQoQ09ORklHX1BFUkZfRVZFTlRTKSx5KQo+ICsgICAgICAg
IEtCVUlMRF9DRkxBR1MgKz0gLWZuby1vbWl0LWZyYW1lLXBvaW50ZXIKPiArZW5kaWYKPgo+ICBL
QlVJTERfQ0ZMQUdTX01PRFVMRSArPSAkKGNhbGwgY2Mtb3B0aW9uLC1tbm8tcmVsYXgpCj4KPiBk
aWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvTWFrZWZpbGUgYi9hcmNoL3Jpc2N2L2tlcm5l
bC9NYWtlZmlsZQo+IGluZGV4IDI0MjBkMzcuLmIxYmVhODkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9y
aXNjdi9rZXJuZWwvTWFrZWZpbGUKPiArKysgYi9hcmNoL3Jpc2N2L2tlcm5lbC9NYWtlZmlsZQo+
IEBAIC0zOCw2ICszOCw3IEBAIG9iai0kKENPTkZJR19NT0RVTEVfU0VDVElPTlMpICs9IG1vZHVs
ZS1zZWN0aW9ucy5vCj4gIG9iai0kKENPTkZJR19GVU5DVElPTl9UUkFDRVIpICArPSBtY291bnQu
byBmdHJhY2Uubwo+ICBvYmotJChDT05GSUdfRFlOQU1JQ19GVFJBQ0UpICAgKz0gbWNvdW50LWR5
bi5vCj4KPiAtb2JqLSQoQ09ORklHX1BFUkZfRVZFTlRTKSAgICAgICs9IHBlcmZfZXZlbnQubwo+
ICtvYmotJChDT05GSUdfUEVSRl9FVkVOVFMpICAgICAgKz0gcGVyZl9ldmVudC5vCj4gK29iai0k
KENPTkZJR19QRVJGX0VWRU5UUykgICAgICArPSBwZXJmX2NhbGxjaGFpbi5vCj4KPiAgY2xlYW46
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvcmlzY3Yva2VybmVsL3BlcmZfY2FsbGNoYWluLmMgYi9hcmNo
L3Jpc2N2L2tlcm5lbC9wZXJmX2NhbGxjaGFpbi5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwLi5kNzVkMTVjCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvcmlzY3Yv
a2VybmVsL3BlcmZfY2FsbGNoYWluLmMKPiBAQCAtMCwwICsxLDExNSBAQAo+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsvKiBDb3B5cmlnaHQgKEMpIDIwMTkgSGFuZ3po
b3UgQy1TS1kgTWljcm9zeXN0ZW1zIGNvLixsdGQuICovCj4gKwo+ICsjaW5jbHVkZSA8bGludXgv
cGVyZl9ldmVudC5oPgo+ICsjaW5jbHVkZSA8bGludXgvdWFjY2Vzcy5oPgo+ICsKPiArLyogS2Vy
bmVsIGNhbGxjaGFpbiAqLwo+ICtzdHJ1Y3Qgc3RhY2tmcmFtZSB7Cj4gKyAgICAgICB1bnNpZ25l
ZCBsb25nIGZwOwo+ICsgICAgICAgdW5zaWduZWQgbG9uZyByYTsKPiArfTsKPiArCj4gK3N0YXRp
YyBpbnQgdW53aW5kX2ZyYW1lX2tlcm5lbChzdHJ1Y3Qgc3RhY2tmcmFtZSAqZnJhbWUpCj4gK3sK
PiArICAgICAgIGlmIChrc3RhY2tfZW5kKCh2b2lkICopZnJhbWUtPmZwKSkKPiArICAgICAgICAg
ICAgICAgcmV0dXJuIC1FUEVSTTsKPiArICAgICAgIGlmIChmcmFtZS0+ZnAgJiAweDMgfHwgZnJh
bWUtPmZwIDwgVEFTS19TSVpFKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVQRVJNOwo+ICsg
ICAgICAgaWYgKGZyYW1lLT5mcCA8IENPTkZJR19QQUdFX09GRlNFVCkKPiArICAgICAgICAgICAg
ICAgcmV0dXJuIC1FUEVSTTsKPiArCj4gKyAgICAgICAqZnJhbWUgPSAqKChzdHJ1Y3Qgc3RhY2tm
cmFtZSAqKWZyYW1lLT5mcCAtIDEpOwo+ICsgICAgICAgaWYgKF9fa2VybmVsX3RleHRfYWRkcmVz
cyhmcmFtZS0+cmEpKSB7Cj4gKyAgICAgICAgICAgICAgIGludCBncmFwaCA9IDA7Cj4gKwo+ICsg
ICAgICAgICAgICAgICBmcmFtZS0+cmEgPSBmdHJhY2VfZ3JhcGhfcmV0X2FkZHIoTlVMTCwgJmdy
YXBoLCBmcmFtZS0+cmEsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOVUxMKTsK
PiArICAgICAgIH0KPiArICAgICAgIHJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBu
b3RyYWNlIHdhbGtfc3RhY2tmcmFtZShzdHJ1Y3Qgc3RhY2tmcmFtZSAqZnIsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgc3RydWN0IHBlcmZfY2FsbGNoYWluX2VudHJ5X2N0eCAqZW50cnkpCj4g
K3sKPiArICAgICAgIGRvIHsKPiArICAgICAgICAgICAgICAgcGVyZl9jYWxsY2hhaW5fc3RvcmUo
ZW50cnksIGZyLT5yYSk7Cj4gKyAgICAgICB9IHdoaWxlICh1bndpbmRfZnJhbWVfa2VybmVsKGZy
KSA+PSAwKTsKPiArfQo+ICsKPiArLyoKPiArICogR2V0IHRoZSByZXR1cm4gYWRkcmVzcyBmb3Ig
YSBzaW5nbGUgc3RhY2tmcmFtZSBhbmQgcmV0dXJuIGEgcG9pbnRlciB0byB0aGUKPiArICogbmV4
dCBmcmFtZSB0YWlsLgo+ICsgKi8KPiArc3RhdGljIHVuc2lnbmVkIGxvbmcgdXNlcl9iYWNrdHJh
Y2Uoc3RydWN0IHBlcmZfY2FsbGNoYWluX2VudHJ5X2N0eCAqZW50cnksCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBmcCwgdW5zaWduZWQgbG9uZyByZWdfcmEpCj4gK3sK
PiArICAgICAgIHN0cnVjdCBzdGFja2ZyYW1lIGJ1ZnRhaWw7Cj4gKyAgICAgICB1bnNpZ25lZCBs
b25nIHJhID0gMDsKPiArICAgICAgIHVuc2lnbmVkIGxvbmcgKnVzZXJfZnJhbWVfdGFpbCA9Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGxvbmcgKikoZnAgLSBzaXplb2Yoc3Ry
dWN0IHN0YWNrZnJhbWUpKTsKPiArCj4gKyAgICAgICAvKiBDaGVjayBhY2Nlc3NpYmlsaXR5IG9m
IG9uZSBzdHJ1Y3QgZnJhbWVfdGFpbCBiZXlvbmQgKi8KPiArICAgICAgIGlmICghYWNjZXNzX29r
KHVzZXJfZnJhbWVfdGFpbCwgc2l6ZW9mKGJ1ZnRhaWwpKSkKPiArICAgICAgICAgICAgICAgcmV0
dXJuIDA7Cj4gKyAgICAgICBpZiAoX19jb3B5X2Zyb21fdXNlcl9pbmF0b21pYygmYnVmdGFpbCwg
dXNlcl9mcmFtZV90YWlsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c2l6ZW9mKGJ1ZnRhaWwpKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gKwo+ICsgICAg
ICAgaWYgKHJlZ19yYSAhPSAwKQo+ICsgICAgICAgICAgICAgICByYSA9IHJlZ19yYTsKPiArICAg
ICAgIGVsc2UKPiArICAgICAgICAgICAgICAgcmEgPSBidWZ0YWlsLnJhOwo+ICsKPiArICAgICAg
IGZwID0gYnVmdGFpbC5mcDsKPiArICAgICAgIHBlcmZfY2FsbGNoYWluX3N0b3JlKGVudHJ5LCBy
YSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGZwOwo+ICt9Cj4gKwo+ICsvKgo+ICsgKiBUaGlzIHdp
bGwgYmUgY2FsbGVkIHdoZW4gdGhlIHRhcmdldCBpcyBpbiB1c2VyIG1vZGUKPiArICogVGhpcyBm
dW5jdGlvbiB3aWxsIG9ubHkgYmUgY2FsbGVkIHdoZW4gd2UgdXNlCj4gKyAqICJQRVJGX1NBTVBM
RV9DQUxMQ0hBSU4iIGluCj4gKyAqIGtlcm5lbC9ldmVudHMvY29yZS5jOnBlcmZfcHJlcGFyZV9z
YW1wbGUoKQo+ICsgKgo+ICsgKiBIb3cgdG8gdHJpZ2dlciBwZXJmX2NhbGxjaGFpbl9bdXNlci9r
ZXJuZWxdIDoKPiArICogJCBwZXJmIHJlY29yZCAtZSBjcHUtY2xvY2sgLS1jYWxsLWdyYXBoIGZw
IC4vcHJvZ3JhbQo+ICsgKiAkIHBlcmYgcmVwb3J0IC0tY2FsbC1ncmFwaAo+ICsgKgo+ICsgKiBP
biBSSVNDLVYgcGxhdGZvcm0sIHRoZSBwcm9ncmFtIGJlaW5nIHNhbXBsZWQgYW5kIHRoZSBDIGxp
YnJhcnkKPiArICogbmVlZCB0byBiZSBjb21waWxlZCB3aXRoIC1mbm8tb21pdC1mcmFtZS1wb2lu
dGVyLCBvdGhlcndpc2UKPiArICogdGhlIHVzZXIgc3RhY2sgd2lsbCBub3QgY29udGFpbiBmdW5j
dGlvbiBmcmFtZS4KPiArICovCj4gK3ZvaWQgcGVyZl9jYWxsY2hhaW5fdXNlcihzdHJ1Y3QgcGVy
Zl9jYWxsY2hhaW5fZW50cnlfY3R4ICplbnRyeSwKPiArICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHB0X3JlZ3MgKnJlZ3MpCj4gK3sKPiArICAgICAgIHVuc2lnbmVkIGxvbmcgZnAgPSAw
Owo+ICsKPiArICAgICAgIC8qIFJJU0MtViBkb2VzIG5vdCBzdXBwb3J0IHZpcnR1YWxpemF0aW9u
LiAqLwo+ICsgICAgICAgaWYgKHBlcmZfZ3Vlc3RfY2JzICYmIHBlcmZfZ3Vlc3RfY2JzLT5pc19p
bl9ndWVzdCgpKQo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKwo+ICsgICAgICAgZnAgPSBy
ZWdzLT5zMDsKPiArICAgICAgIHBlcmZfY2FsbGNoYWluX3N0b3JlKGVudHJ5LCByZWdzLT5zZXBj
KTsKPiArCj4gKyAgICAgICBmcCA9IHVzZXJfYmFja3RyYWNlKGVudHJ5LCBmcCwgcmVncy0+cmEp
Owo+ICsgICAgICAgd2hpbGUgKGZwICYmICEoZnAgJiAweDMpICYmIGVudHJ5LT5uciA8IGVudHJ5
LT5tYXhfc3RhY2spCj4gKyAgICAgICAgICAgICAgIGZwID0gdXNlcl9iYWNrdHJhY2UoZW50cnks
IGZwLCAwKTsKPiArfQo+ICsKPiArdm9pZCBwZXJmX2NhbGxjaGFpbl9rZXJuZWwoc3RydWN0IHBl
cmZfY2FsbGNoYWluX2VudHJ5X2N0eCAqZW50cnksCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgc3RydWN0IHB0X3JlZ3MgKnJlZ3MpCj4gK3sKPiArICAgICAgIHN0cnVjdCBzdGFja2ZyYW1l
IGZyOwo+ICsKPiArICAgICAgIC8qIFJJU0MtViBkb2VzIG5vdCBzdXBwb3J0IHZpcnR1YWxpemF0
aW9uLiAqLwo+ICsgICAgICAgaWYgKHBlcmZfZ3Vlc3RfY2JzICYmIHBlcmZfZ3Vlc3RfY2JzLT5p
c19pbl9ndWVzdCgpKSB7Cj4gKyAgICAgICAgICAgICAgIHByX3dhcm4oIlJJU0MtViBkb2VzIG5v
dCBzdXBwb3J0IHBlcmYgaW4gZ3Vlc3QgbW9kZSEiKTsKPiArICAgICAgICAgICAgICAgcmV0dXJu
Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGZyLmZwID0gcmVncy0+czA7Cj4gKyAgICAgICBm
ci5yYSA9IHJlZ3MtPnJhOwo+ICsgICAgICAgd2Fsa19zdGFja2ZyYW1lKCZmciwgZW50cnkpOwo+
ICt9Cj4gLS0KPiAyLjcuNAo+CgpOb3Qgc3VyZSBpZiBJIGRpZCBzb21ldGhpbmcgd3JvbmcuIEkg
ZW5jb3VudGVyIGEgYnVpbGQgZXJyb3Igd2hlbiBJCnRyeSB0byBidWlsZCB0b29scy9wZXJmL3Rl
c3RzCgogIENDICAgICAgIGFyY2gvcmlzY3YvdXRpbC9kd2FyZi1yZWdzLm8KYXJjaC9yaXNjdi91
dGlsL2R3YXJmLXJlZ3MuYzo2NDo1OiBlcnJvcjogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvcgri
gJhyZWdzX3F1ZXJ5X3JlZ2lzdGVyX29mZnNldOKAmSBbLVdlcnJvcj1taXNzaW5nLXByb3RvdHlw
ZXNdCgpJIHNpbXBseSBhZGQgaXRzIHByb3RvdHlwZSBhbmQgaXQgY291bGQgYmUgYnVpbHQgcGFz
cy4KVGhpcyBpcyBteSB0ZXN0aW5nIHJlc3VsdHMuCiMgLi9wZXJmIHRlc3QKIDE6IHZtbGludXgg
c3ltdGFiIG1hdGNoZXMga2FsbHN5bXMgICAgICAgICAgICAgICAgICAgICAgIDogU2tpcAogMjog
RGV0ZWN0IG9wZW5hdCBzeXNjYWxsIGV2ZW50ICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBG
QUlMRUQhCiAzOiBEZXRlY3Qgb3BlbmF0IHN5c2NhbGwgZXZlbnQgb24gYWxsIGNwdXMgICAgICAg
ICAgICAgICA6IEZBSUxFRCEKIDQ6IFJlYWQgc2FtcGxlcyB1c2luZyB0aGUgbW1hcCBpbnRlcmZh
Y2UgICAgICAgICAgICAgICAgIDogRkFJTEVEIQogNTogVGVzdCBkYXRhIHNvdXJjZSBvdXRwdXQg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawogNjogUGFyc2UgZXZlbnQgZGVmaW5p
dGlvbiBzdHJpbmdzICAgICAgICAgICAgICAgICAgICAgICAgOiBGQUlMRUQhCiA3OiBTaW1wbGUg
ZXhwcmVzc2lvbiBwYXJzZXIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IE9rCiA4OiBQ
RVJGX1JFQ09SRF8qIGV2ZW50cyAmIHBlcmZfc2FtcGxlIGZpZWxkcyAgICAgICAgICAgICA6IEZB
SUxFRCEKIDk6IFBhcnNlIHBlcmYgcG11IGZvcm1hdCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDogT2sKMTA6IERTTyBkYXRhIHJlYWQgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDogT2sKMTE6IERTTyBkYXRhIGNhY2hlICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDogT2sKMTI6IERTTyBkYXRhIHJlb3BlbiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDogT2sKMTM6IFJvdW5kdHJpcCBldnNlbC0+bmFtZSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogT2sKMTQ6IFBhcnNlIHNjaGVkIHRyYWNl
cG9pbnRzIGZpZWxkcyAgICAgICAgICAgICAgICAgICAgICAgIDogRkFJTEVEIQoxNTogc3lzY2Fs
bHM6c3lzX2VudGVyX29wZW5hdCBldmVudCBmaWVsZHMgICAgICAgICAgICAgICAgOiBGQUlMRUQh
CjE2OiBTZXR1cCBzdHJ1Y3QgcGVyZl9ldmVudF9hdHRyICAgICAgICAgICAgICAgICAgICAgICAg
ICA6IEZBSUxFRCEKMTc6IE1hdGNoIGFuZCBsaW5rIG11bHRpcGxlIGhpc3RzICAgICAgICAgICAg
ICAgICAgICAgICAgIDogT2sKMTg6ICdpbXBvcnQgcGVyZicgaW4gcHl0aG9uICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDogRkFJTEVEIQoKMTk6IEJyZWFrcG9pbnQgb3ZlcmZsb3cgc2ln
bmFsIGhhbmRsZXIgICAgICAgICAgICAgICAgICAgIDogRkFJTEVEIQoyMDogQnJlYWtwb2ludCBv
dmVyZmxvdyBzYW1wbGluZyAgICAgICAgICAgICAgICAgICAgICAgICAgOiBGQUlMRUQhCjIxOiBC
cmVha3BvaW50IGFjY291bnRpbmcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IFNr
aXAKMjI6IFdhdGNocG9pbnQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDoKMjIuMTogUmVhZCBPbmx5IFdhdGNocG9pbnQgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDogRkFJTEVEIQoyMi4yOiBXcml0ZSBPbmx5IFdhdGNocG9pbnQgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgOiBGQUlMRUQhCjIyLjM6IFJlYWQgLyBXcml0ZSBXYXRjaHBvaW50
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IEZBSUxFRCEKMjIuNDogTW9kaWZ5IFdhdGNo
cG9pbnQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogRkFJTEVEIQoyMzogTnVt
YmVyIG9mIGV4aXQgZXZlbnRzIG9mIGEgc2ltcGxlIHdvcmtsb2FkICAgICAgICAgICAgOiBPawoy
NDogU29mdHdhcmUgY2xvY2sgZXZlbnRzIHBlcmlvZCB2YWx1ZXMgICAgICAgICAgICAgICAgICAg
OiBPawoyNTogT2JqZWN0IGNvZGUgcmVhZGluZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgOiBPawoyNjogU2FtcGxlIHBhcnNpbmcgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgOiBPawoyNzogVXNlIGEgZHVtbXkgc29mdHdhcmUgZXZlbnQgdG8ga2VlcCB0
cmFja2luZyAgICAgICAgICAgOiBPawoyODogUGFyc2Ugd2l0aCBubyBzYW1wbGVfaWRfYWxsIGJp
dCBzZXQgICAgICAgICAgICAgICAgICAgOiBPawoyOTogRmlsdGVyIGhpc3QgZW50cmllcyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawozMDogTG9va3VwIG1tYXAgdGhyZWFk
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawozMTogU2hhcmUgdGhyZWFk
IG1nICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawozMjogU29ydCBv
dXRwdXQgb2YgaGlzdCBlbnRyaWVzICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawozMzog
Q3VtdWxhdGUgY2hpbGQgaGlzdCBlbnRyaWVzICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBP
awozNDogVHJhY2sgd2l0aCBzY2hlZF9zd2l0Y2ggICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgOiBPawozNTogRmlsdGVyIGZkcyB3aXRoIHJldmVudHMgbWFzayBpbiBhIGZkYXJyYXkgICAg
ICAgICAgICAgOiBPawozNjogQWRkIGZkIHRvIGEgZmRhcnJheSwgbWFraW5nIGl0IGF1dG9ncm93
ICAgICAgICAgICAgICAgOiBPawozNzoga21vZF9wYXRoX19wYXJzZSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgOiBPawozODogVGhyZWFkIG1hcCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawozOTogTExWTSBzZWFyY2ggYW5kIGNvbXBp
bGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOgozOS4xOiBCYXNpYyBCUEYgbGx2bSBj
b21waWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBTa2lwCjM5LjI6IGtidWlsZCBz
ZWFyY2hpbmcgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IFNraXAKMzkuMzog
Q29tcGlsZSBzb3VyY2UgZm9yIEJQRiBwcm9sb2d1ZSBnZW5lcmF0aW9uICAgICAgICAgIDogU2tp
cAozOS40OiBDb21waWxlIHNvdXJjZSBmb3IgQlBGIHJlbG9jYXRpb24gICAgICAgICAgICAgICAg
ICAgOiBTa2lwCjQwOiBTZXNzaW9uIHRvcG9sb2d5ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA6IEZBSUxFRCEKNDE6IEJQRiBmaWx0ZXIgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDoKNDEuMTogQmFzaWMgQlBGIGZpbHRlcmluZyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIDogU2tpcAo0MS4yOiBCUEYgcGlubmluZyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBTa2lwCjQxLjM6IEJQRiByZWxvY2F0
aW9uIGNoZWNrZXIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IFNraXAKNDI6IFN5bnRo
ZXNpemUgdGhyZWFkIG1hcCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogT2sKNDM6
IFJlbW92ZSB0aHJlYWQgbWFwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDog
T2sKNDQ6IFN5bnRoZXNpemUgY3B1IG1hcCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDogT2sKNDU6IFN5bnRoZXNpemUgc3RhdCBjb25maWcgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDogT2sKNDY6IFN5bnRoZXNpemUgc3RhdCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDogT2sKNDc6IFN5bnRoZXNpemUgc3RhdCByb3VuZCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDogT2sKNDg6IFN5bnRoZXNpemUgYXR0ciB1cGRhdGUgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogT2sKNDk6IEV2ZW50IHRpbWVzICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogT2sKNTA6IFJlYWQgYmFja3dhcmQg
cmluZyBidWZmZXIgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogU2tpcAo1MTogUHJpbnQg
Y3B1IG1hcCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBPawo1Mjog
UHJvYmUgU0RUIGV2ZW50cyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgOiBT
a2lwCjUzOiBpc19wcmludGFibGVfYXJyYXkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA6IE9rCjU0OiBQcmludCBiaXRtYXAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICA6IE9rCjU1OiBwZXJmIGhvb2tzICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA6IE9rCjU2OiBidWlsdGluIGNsYW5nIHN1cHBvcnQgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA6IFNraXAgKG5vdApjb21waWxlZCBpbikKNTc6IHVuaXRf
bnVtYmVyX19zY25wcmludGYgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDogT2sKNTg6
IG1lbTJub2RlICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDog
T2sKNTk6IHRpbWUgdXRpbHMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIDogT2sKNjA6IG1hcF9ncm91cHNfX21lcmdlX2luICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDogT2sKNjE6IHByb2JlIGxpYmMncyBpbmV0X3B0b24gJiBiYWNrdHJhY2UgaXQg
d2l0aCBwaW5nICAgICAgIDogRkFJTEVEIQo2MjogQWRkIHZmc19nZXRuYW1lIHByb2JlIHRvIGdl
dCBzeXNjYWxsIGFyZ3MgZmlsZW5hbWVzICAgOiBGQUlMRUQhCjYzOiBDaGVjayBvcGVuIGZpbGVu
YW1lIGFyZyB1c2luZyBwZXJmIHRyYWNlICsgdmZzX2dldG5hbWU6IFNraXAKNjQ6IFVzZSB2ZnNf
Z2V0bmFtZSBwcm9iZSB0byBnZXQgc3lzY2FsbCBhcmdzIGZpbGVuYW1lcyAgIDogRkFJTEVEIQo2
NTogWnN0ZCBwZXJmLmRhdGEgY29tcHJlc3Npb24vZGVjb21wcmVzc2lvbiAgICAgICAgICAgICAg
OiBTa2lwCgpJIGFsc28gdHJ5IHRoZSBjb21tYW5kIHRoYXQgUGF1bCBwb2ludGVkIG91dC4KLi9w
ZXJmIHJlY29yZCAtZSBjcHUtY2xvY2sgLS1jYWxsLWdyYXBoIGZwIC9iaW4vbHMKSXQgd29ya3Mg
ZmluZSBub3cuIEl0IGNhbiBnZW5lcmF0ZSBhIHBlcmYuZGF0YSBub3cuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxp
c3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
