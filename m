Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F1E10372A
	for <lists+linux-riscv@lfdr.de>; Wed, 20 Nov 2019 11:01:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lN4BRINeNdFmLS5jln5EbTlB9lAf7cndL9E792xcK4U=; b=JpemE32fW29rjA
	ZvfTut7Td+or4JRvNvfG6dltJ2hrjNlNJsPHzwphNhjyAuTvhf6T8/HtDLylCUAKliDzuu0NvSkUA
	sOvW24+jpnlLwsvHnc/wMVxI6gGrhlqA0ZlJbdRSamQkmVcqXFr4bmhkxruL0vLPs52XZ1JNFuH/U
	OWnQ9Pf6Qm5ehdWNSI/x/uGY+zjE8l36zdimqS93Q/JVXZ15dHhYvwgoddcct774Ai6d75YDWUL/h
	NSQMuVW7zk/txkzMmBYlYBzAzCklcMi0nAU0dTIjSuadJdY08ksVhefDGSbbDkD+M2jPbvFq/VObJ
	Eprsy3Dsp5+gkLHtzh9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXMnf-0006Hw-1Z; Wed, 20 Nov 2019 10:01:27 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXMnb-0006HL-4F
 for linux-riscv@lists.infradead.org; Wed, 20 Nov 2019 10:01:25 +0000
Received: by mail-oi1-x243.google.com with SMTP id y194so21983202oie.4
 for <linux-riscv@lists.infradead.org>; Wed, 20 Nov 2019 02:01:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=owYl7Mqpt03mWUhIgEwwHONpGDjEn3cnP45Q+cviie4=;
 b=c5TtuObauI3ydDduFjioktPnaNdATg7qjaFt25EINLYA9Scx8Fsc6kaiY+3qSLuc7j
 bE7TbVDvlGenHuGRIB183tL1pyG6nwmRTwF+fkYP250ji9zB7mj/gBUW8AWhMjs1s14r
 Fn3fj8M0WKfFmNknh78MlUfwhtNecCFRwyip/GN6cxPFrVDa2QI4kR2yhie/SkRwpgrV
 0WsNBLi9sqX+PVyWldhsOz0Bp56c4YzkhKSsah8L56+cRIgsFXHWYjRbeXsnyTvfVDl5
 8EEA6X8fDl2uHMoQj442yLOBbTCNXKfqgu3q8aRxKPyF9zKkzdz6V1YA7J/k68fNX5Zg
 IrrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=owYl7Mqpt03mWUhIgEwwHONpGDjEn3cnP45Q+cviie4=;
 b=pvR8jMn+s0kZr4ctxaEcCceaRXz6o6ij8qIQKJgqxnI42dcpbFdHKQn17hoa3PrKuS
 NLdSIelj41iEDP0EuDx3xJYsqaeSxPefeYkzB4EVmKuvhhBu1YOL3vQAyu2WTZ/MsCjR
 2Y2kLgKS4+eCZEX/nzzr5tKYPfM4F3yPzZGaDH36z8ZFLJ13OAa5ubllhPrD9tjMBUfR
 MUwCJdblgrnXRTOhXYXmiK+PqPfW7z/2ANwxvRmT4/DTx4tjjFEtAJfxayTelp5UghyB
 3QrUmRivLc7BSjZsjMEn7T1pL0qjXzO0ESdZGz1+9YaNhxPBsVen6CtgsOMLmEZqjrRw
 J2eA==
X-Gm-Message-State: APjAAAU04ckceIclskc4dNNYyioGxZZB2dKsTQPx0d8LuPJRtxZPjC9Q
 EC3IX1XLcNONV0Ewkril20jQAVRapkumFilRZcOc/g==
X-Google-Smtp-Source: APXvYqz3r7gBS8j3jGnUdcRUI8kDQTz1SdtSZLcTAU0UL8P4gRUSN5TF8Bh563HYZEUxxKtLgo0o1lEqenI6PObdQzw=
X-Received: by 2002:a05:6808:9a1:: with SMTP id
 e1mr2025810oig.175.1574244081870; 
 Wed, 20 Nov 2019 02:01:21 -0800 (PST)
MIME-Version: 1.0
References: <1574233128-28114-1-git-send-email-yash.shah@sifive.com>
 <1574233128-28114-5-git-send-email-yash.shah@sifive.com>
In-Reply-To: <1574233128-28114-5-git-send-email-yash.shah@sifive.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 20 Nov 2019 11:01:11 +0100
Message-ID: <CAMpxmJX0A+_6LmrWPe=Ne5KGhG9r_HySpstDhV5ZTnpz2QXF7Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] gpio: sifive: Add GPIO driver for SiFive SoCs
To: Yash Shah <yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_020123_237430_AB53F7D5 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "maz@kernel.org" <maz@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 Sagar Kadam <sagar.kadam@sifive.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

xZtyLiwgMjAgbGlzIDIwMTkgbyAwNzo1OSBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29t
PiBuYXBpc2HFgihhKToKPgo+IEFkZHMgdGhlIEdQSU8gZHJpdmVyIGZvciBTaUZpdmUgUklTQy1W
IFNvQ3MuCj4KClRoaXMgbG9va3MgbXVjaCBiZXR0ZXIganVzdCBhIGNvdXBsZSBuaXRzLgoKPiBT
aWduZWQtb2ZmLWJ5OiBXZXNsZXkgVy4gVGVycHN0cmEgPHdlc2xleUBzaWZpdmUuY29tPgo+IFtB
dGlzaDogVmFyaW91cyBmaXhlcyBhbmQgY29kZSBjbGVhbnVwXQo+IFNpZ25lZC1vZmYtYnk6IEF0
aXNoIFBhdHJhIDxhdGlzaC5wYXRyYUB3ZGMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlhc2ggU2hh
aCA8eWFzaC5zaGFoQHNpZml2ZS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9LY29uZmlnICAg
ICAgIHwgICA5ICsrCj4gIGRyaXZlcnMvZ3Bpby9NYWtlZmlsZSAgICAgIHwgICAxICsKPiAgZHJp
dmVycy9ncGlvL2dwaW8tc2lmaXZlLmMgfCAyNTYgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjY2IGluc2VydGlvbnMoKykK
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3Bpby9ncGlvLXNpZml2ZS5jCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncGlvL0tjb25maWcgYi9kcml2ZXJzL2dwaW8vS2NvbmZpZwo+IGlu
ZGV4IDM4ZTA5NmUuLjA1ZThhNDEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL0tjb25maWcK
PiArKysgYi9kcml2ZXJzL2dwaW8vS2NvbmZpZwo+IEBAIC00NTMsNiArNDUzLDE1IEBAIGNvbmZp
ZyBHUElPX1NBTUE1RDJfUElPQlUKPiAgICAgICAgICAgVGhlIGRpZmZlcmVuY2UgZnJvbSByZWd1
bGFyIEdQSU9zIGlzIHRoYXQgdGhleQo+ICAgICAgICAgICBtYWludGFpbiB0aGVpciB2YWx1ZSBk
dXJpbmcgYmFja3VwL3NlbGYtcmVmcmVzaC4KPgo+ICtjb25maWcgR1BJT19TSUZJVkUKPiArICAg
ICAgIGJvb2wgIlNpRml2ZSBHUElPIHN1cHBvcnQiCj4gKyAgICAgICBkZXBlbmRzIG9uIE9GX0dQ
SU8KPiArICAgICAgIHNlbGVjdCBHUElPX0dFTkVSSUMKPiArICAgICAgIHNlbGVjdCBHUElPTElC
X0lSUUNISVAKPiArICAgICAgIHNlbGVjdCBSRUdNQVBfTU1JTwo+ICsgICAgICAgaGVscAo+ICsg
ICAgICAgICBTYXkgeWVzIGhlcmUgdG8gc3VwcG9ydCB0aGUgR1BJTyBkZXZpY2Ugb24gU2lGaXZl
IFNvQ3MuCj4gKwo+ICBjb25maWcgR1BJT19TSU9YCj4gICAgICAgICB0cmlzdGF0ZSAiU0lPWCBH
UElPIHN1cHBvcnQiCj4gICAgICAgICBkZXBlbmRzIG9uIFNJT1gKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncGlvL01ha2VmaWxlIGIvZHJpdmVycy9ncGlvL01ha2VmaWxlCj4gaW5kZXggZDJmZDE5
Yy4uYmY3OTg0ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vTWFrZWZpbGUKPiArKysgYi9k
cml2ZXJzL2dwaW8vTWFrZWZpbGUKPiBAQCAtMTIxLDYgKzEyMSw3IEBAIG9iai0kKENPTkZJR19B
UkNIX1NBMTEwMCkgICAgICAgICAgICs9IGdwaW8tc2ExMTAwLm8KPiAgb2JqLSQoQ09ORklHX0dQ
SU9fU0FNQTVEMl9QSU9CVSkgICAgICAgKz0gZ3Bpby1zYW1hNWQyLXBpb2J1Lm8KPiAgb2JqLSQo
Q09ORklHX0dQSU9fU0NIMzExWCkgICAgICAgICAgICAgKz0gZ3Bpby1zY2gzMTF4Lm8KPiAgb2Jq
LSQoQ09ORklHX0dQSU9fU0NIKSAgICAgICAgICAgICAgICAgKz0gZ3Bpby1zY2gubwo+ICtvYmot
JChDT05GSUdfR1BJT19TSUZJVkUpICAgICAgICAgICAgICArPSBncGlvLXNpZml2ZS5vCj4gIG9i
ai0kKENPTkZJR19HUElPX1NJT1gpICAgICAgICAgICAgICAgICAgICAgICAgKz0gZ3Bpby1zaW94
Lm8KPiAgb2JqLSQoQ09ORklHX0dQSU9fU09EQVZJTExFKSAgICAgICAgICAgKz0gZ3Bpby1zb2Rh
dmlsbGUubwo+ICBvYmotJChDT05GSUdfR1BJT19TUEVBUl9TUElDUykgICAgICAgICArPSBncGlv
LXNwZWFyLXNwaWNzLm8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tc2lmaXZlLmMg
Yi9kcml2ZXJzL2dwaW8vZ3Bpby1zaWZpdmUuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMC4uMDI2NjZhZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2dwaW8v
Z3Bpby1zaWZpdmUuYwo+IEBAIC0wLDAgKzEsMjU2IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiBHUEwtMi4wCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoQykgMjAxOSBTaUZpdmUKPiAr
ICovCgpJIHByZWZlciB0byBoYXZlIGEgbmV3bGluZSBiZXR3ZWVuIHRoZSBjb3B5cmlnaHQgbm90
aWNlIGFuZCB0aGUgaGVhZGVycy4KCj4gKyNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KPiArI2lu
Y2x1ZGUgPGxpbnV4L29mX2lycS5oPgo+ICsjaW5jbHVkZSA8bGludXgvZ3Bpby9kcml2ZXIuaD4K
PiArI2luY2x1ZGUgPGxpbnV4L2luaXQuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+CgpJcyB0
aGlzIHJlYWxseSBuZWVkZWQ/IEkgb25seSBzZWUgZnVuY3Rpb25zIGRlZmluZWQgaW4gb2ZfaXJx
LmguCgo+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxs
aW51eC9wbS5oPgoKU2FtZSBoZXJlIC0gSSBkb24ndCBzZWUgYW55IGZ1bmN0aW9ucyBmcm9tIHRo
aXMgaGVhZGVyIGJlaW5nIGNhbGxlZC4KCj4gKyNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gKyNp
bmNsdWRlIDxsaW51eC9zcGlubG9jay5oPgo+ICsjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4g
Kwo+ICsjZGVmaW5lIEdQSU9fSU5QVVRfVkFMIDB4MDAKPiArI2RlZmluZSBHUElPX0lOUFVUX0VO
ICAweDA0Cj4gKyNkZWZpbmUgR1BJT19PVVRQVVRfRU4gMHgwOAo+ICsjZGVmaW5lIEdQSU9fT1VU
UFVUX1ZBTCAgICAgICAgMHgwQwo+ICsjZGVmaW5lIEdQSU9fUklTRV9JRSAgIDB4MTgKPiArI2Rl
ZmluZSBHUElPX1JJU0VfSVAgICAweDFDCj4gKyNkZWZpbmUgR1BJT19GQUxMX0lFICAgMHgyMAo+
ICsjZGVmaW5lIEdQSU9fRkFMTF9JUCAgIDB4MjQKPiArI2RlZmluZSBHUElPX0hJR0hfSUUgICAw
eDI4Cj4gKyNkZWZpbmUgR1BJT19ISUdIX0lQICAgMHgyQwo+ICsjZGVmaW5lIEdQSU9fTE9XX0lF
ICAgIDB4MzAKPiArI2RlZmluZSBHUElPX0xPV19JUCAgICAweDM0Cj4gKyNkZWZpbmUgR1BJT19P
VVRQVVRfWE9SICAgICAgICAweDQwCj4gKwo+ICsjZGVmaW5lIE1BWF9HUElPICAgICAgICAgICAg
ICAgMzIKPiArI2RlZmluZSBTSUZJVkVfR1BJT19JUlFfT0ZGU0VUIDcKClBsZWFzZSB1c2UgYSBz
aW5nbGUgcHJlZml4IGZvciBhbGwgc3ltYm9scyBpbiB0aGlzIGRyaXZlci4gTGV0J3Mgc3RpY2sK
dG8gc2lmaXZlX2dwaW8gYW5kIFNJRklWRV9HUElPIGZvciBkZWZpbmVzLgoKPiArCj4gK3N0cnVj
dCBzaWZpdmVfZ3BpbyB7Cj4gKyAgICAgICB2b2lkIF9faW9tZW0gICAgICAgICAgICAqYmFzZTsK
PiArICAgICAgIHN0cnVjdCBncGlvX2NoaXAgICAgICAgIGdjOwo+ICsgICAgICAgc3RydWN0IHJl
Z21hcCAgICAgICAgICAgKnJlZ3M7Cj4gKyAgICAgICB1MzIgICAgICAgICAgICAgICAgICAgICBl
bmFibGVkOwoKVGhlIG5hbWUgb2YgdGhpcyBmaWVsZCBpcyBhIGJpdCBjb25mdXNpbmcgLSBkbyB5
b3UgbWluZCByZW5hbWluZyBpdCB0bwpzb21ldGhpbmcgbGlrZSBpcnFfc3RhdGU/IE1heWJlIHNv
bWV0aGluZyBlbHNlLCBidXQgc2ltcGx5IHVzaW5nCidlbmFibGVkJyBtYWtlcyBtZSB0aGluayB0
aGlzIGhhcyBtb3JlIHRvIGRvIHdpdGggdGhlIGNoaXAgYmVpbmcKZW5hYmxlZC4KCj4gKyAgICAg
ICB1bnNpZ25lZCBpbnQgICAgICAgICAgICB0cmlnZ2VyW01BWF9HUElPXTsKPiArICAgICAgIHVu
c2lnbmVkIGludCAgICAgICAgICAgIGlycV9wYXJlbnRbTUFYX0dQSU9dOwo+ICt9Owo+ICsKPiAr
c3RhdGljIHZvaWQgc2lmaXZlX3NldF9pZShzdHJ1Y3Qgc2lmaXZlX2dwaW8gKmNoaXAsIHVuc2ln
bmVkIGludCBvZmZzZXQpCj4gK3sKPiArICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gKyAg
ICAgICB1bnNpZ25lZCBpbnQgdHJpZ2dlcjsKPiArCj4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2
ZSgmY2hpcC0+Z2MuYmdwaW9fbG9jaywgZmxhZ3MpOwo+ICsgICAgICAgdHJpZ2dlciA9IChjaGlw
LT5lbmFibGVkICYgQklUKG9mZnNldCkpID8gY2hpcC0+dHJpZ2dlcltvZmZzZXRdIDogMDsKPiAr
ICAgICAgIHJlZ21hcF91cGRhdGVfYml0cyhjaGlwLT5yZWdzLCBHUElPX1JJU0VfSUUsIEJJVChv
ZmZzZXQpLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICh0cmlnZ2VyICYgSVJRX1RZUEVf
RURHRV9SSVNJTkcpID8gQklUKG9mZnNldCkgOiAwKTsKPiArICAgICAgIHJlZ21hcF91cGRhdGVf
Yml0cyhjaGlwLT5yZWdzLCBHUElPX0ZBTExfSUUsIEJJVChvZmZzZXQpLAo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICh0cmlnZ2VyICYgSVJRX1RZUEVfRURHRV9GQUxMSU5HKSA/IEJJVChv
ZmZzZXQpIDogMCk7Cj4gKyAgICAgICByZWdtYXBfdXBkYXRlX2JpdHMoY2hpcC0+cmVncywgR1BJ
T19ISUdIX0lFLCBCSVQob2Zmc2V0KSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAodHJp
Z2dlciAmIElSUV9UWVBFX0xFVkVMX0hJR0gpID8gQklUKG9mZnNldCkgOiAwKTsKPiArICAgICAg
IHJlZ21hcF91cGRhdGVfYml0cyhjaGlwLT5yZWdzLCBHUElPX0xPV19JRSwgQklUKG9mZnNldCks
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgKHRyaWdnZXIgJiBJUlFfVFlQRV9MRVZFTF9M
T1cpID8gQklUKG9mZnNldCkgOiAwKTsKPiArICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUo
JmNoaXAtPmdjLmJncGlvX2xvY2ssIGZsYWdzKTsKPiArfQo+ICsKPiArc3RhdGljIGludCBzaWZp
dmVfaXJxX3NldF90eXBlKHN0cnVjdCBpcnFfZGF0YSAqZCwgdW5zaWduZWQgaW50IHRyaWdnZXIp
Cj4gK3sKPiArICAgICAgIHN0cnVjdCBncGlvX2NoaXAgKmdjID0gaXJxX2RhdGFfZ2V0X2lycV9j
aGlwX2RhdGEoZCk7Cj4gKyAgICAgICBzdHJ1Y3Qgc2lmaXZlX2dwaW8gKmNoaXAgPSBncGlvY2hp
cF9nZXRfZGF0YShnYyk7Cj4gKyAgICAgICBpbnQgb2Zmc2V0ID0gaXJxZF90b19od2lycShkKTsK
PiArCj4gKyAgICAgICBpZiAob2Zmc2V0IDwgMCB8fCBvZmZzZXQgPj0gZ2MtPm5ncGlvKQo+ICsg
ICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiArCj4gKyAgICAgICBjaGlwLT50cmlnZ2Vy
W29mZnNldF0gPSB0cmlnZ2VyOwo+ICsgICAgICAgc2lmaXZlX3NldF9pZShjaGlwLCBvZmZzZXQp
Owo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHNpZml2ZV9pcnFf
ZW5hYmxlKHN0cnVjdCBpcnFfZGF0YSAqZCkKPiArewo+ICsgICAgICAgc3RydWN0IGdwaW9fY2hp
cCAqZ2MgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPiArICAgICAgIHN0cnVjdCBz
aWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKPiArICAgICAgIGludCBv
ZmZzZXQgPSBpcnFkX3RvX2h3aXJxKGQpICUgTUFYX0dQSU87Cj4gKyAgICAgICB1MzIgYml0ID0g
QklUKG9mZnNldCk7Cj4gKyAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+ICsKPiArICAgICAg
IGlycV9jaGlwX2VuYWJsZV9wYXJlbnQoZCk7Cj4gKwo+ICsgICAgICAgLyogU3dpdGNoIHRvIGlu
cHV0ICovCj4gKyAgICAgICBnYy0+ZGlyZWN0aW9uX2lucHV0KGdjLCBvZmZzZXQpOwo+ICsKPiAr
ICAgICAgIHNwaW5fbG9ja19pcnFzYXZlKCZnYy0+YmdwaW9fbG9jaywgZmxhZ3MpOwo+ICsgICAg
ICAgLyogQ2xlYXIgYW55IHN0aWNreSBwZW5kaW5nIGludGVycnVwdHMgKi8KPiArICAgICAgIHJl
Z21hcF93cml0ZShjaGlwLT5yZWdzLCBHUElPX1JJU0VfSVAsIGJpdCk7Cj4gKyAgICAgICByZWdt
YXBfd3JpdGUoY2hpcC0+cmVncywgR1BJT19GQUxMX0lQLCBiaXQpOwo+ICsgICAgICAgcmVnbWFw
X3dyaXRlKGNoaXAtPnJlZ3MsIEdQSU9fSElHSF9JUCwgYml0KTsKPiArICAgICAgIHJlZ21hcF93
cml0ZShjaGlwLT5yZWdzLCBHUElPX0xPV19JUCwgYml0KTsKPiArICAgICAgIHNwaW5fdW5sb2Nr
X2lycXJlc3RvcmUoJmdjLT5iZ3Bpb19sb2NrLCBmbGFncyk7Cj4gKwo+ICsgICAgICAgLyogRW5h
YmxlIGludGVycnVwdHMgKi8KPiArICAgICAgIGFzc2lnbl9iaXQob2Zmc2V0LCAodW5zaWduZWQg
bG9uZyAqKSZjaGlwLT5lbmFibGVkLCAxKTsKPiArICAgICAgIHNpZml2ZV9zZXRfaWUoY2hpcCwg
b2Zmc2V0KTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgc2lmaXZlX2lycV9kaXNhYmxlKHN0cnVj
dCBpcnFfZGF0YSAqZCkKPiArewo+ICsgICAgICAgc3RydWN0IGdwaW9fY2hpcCAqZ2MgPSBpcnFf
ZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPiArICAgICAgIHN0cnVjdCBzaWZpdmVfZ3BpbyAq
Y2hpcCA9IGdwaW9jaGlwX2dldF9kYXRhKGdjKTsKPiArICAgICAgIGludCBvZmZzZXQgPSBpcnFk
X3RvX2h3aXJxKGQpICUgTUFYX0dQSU87Cj4gKwo+ICsgICAgICAgYXNzaWduX2JpdChvZmZzZXQs
ICh1bnNpZ25lZCBsb25nICopJmNoaXAtPmVuYWJsZWQsIDApOwo+ICsgICAgICAgc2lmaXZlX3Nl
dF9pZShjaGlwLCBvZmZzZXQpOwo+ICsgICAgICAgaXJxX2NoaXBfZGlzYWJsZV9wYXJlbnQoZCk7
Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHNpZml2ZV9pcnFfZW9pKHN0cnVjdCBpcnFfZGF0YSAq
ZCkKPiArewo+ICsgICAgICAgc3RydWN0IGdwaW9fY2hpcCAqZ2MgPSBpcnFfZGF0YV9nZXRfaXJx
X2NoaXBfZGF0YShkKTsKPiArICAgICAgIHN0cnVjdCBzaWZpdmVfZ3BpbyAqY2hpcCA9IGdwaW9j
aGlwX2dldF9kYXRhKGdjKTsKPiArICAgICAgIGludCBvZmZzZXQgPSBpcnFkX3RvX2h3aXJxKGQp
ICUgTUFYX0dQSU87Cj4gKyAgICAgICB1MzIgYml0ID0gQklUKG9mZnNldCk7Cj4gKyAgICAgICB1
bnNpZ25lZCBsb25nIGZsYWdzOwo+ICsKPiArICAgICAgIHNwaW5fbG9ja19pcnFzYXZlKCZnYy0+
YmdwaW9fbG9jaywgZmxhZ3MpOwo+ICsgICAgICAgLyogQ2xlYXIgYWxsIHBlbmRpbmcgaW50ZXJy
dXB0cyAqLwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGNoaXAtPnJlZ3MsIEdQSU9fUklTRV9JUCwg
Yml0KTsKPiArICAgICAgIHJlZ21hcF93cml0ZShjaGlwLT5yZWdzLCBHUElPX0ZBTExfSVAsIGJp
dCk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoY2hpcC0+cmVncywgR1BJT19ISUdIX0lQLCBiaXQp
Owo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGNoaXAtPnJlZ3MsIEdQSU9fTE9XX0lQLCBiaXQpOwo+
ICsgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZ2MtPmJncGlvX2xvY2ssIGZsYWdzKTsK
PiArCj4gKyAgICAgICBpcnFfY2hpcF9lb2lfcGFyZW50KGQpOwo+ICt9Cj4gKwo+ICtzdGF0aWMg
c3RydWN0IGlycV9jaGlwIHNpZml2ZV9pcnFjaGlwID0gewo+ICsgICAgICAgLm5hbWUgICAgICAg
ICAgID0gInNpZml2ZS1ncGlvIiwKPiArICAgICAgIC5pcnFfc2V0X3R5cGUgICA9IHNpZml2ZV9p
cnFfc2V0X3R5cGUsCj4gKyAgICAgICAuaXJxX21hc2sgICAgICAgPSBpcnFfY2hpcF9tYXNrX3Bh
cmVudCwKPiArICAgICAgIC5pcnFfdW5tYXNrICAgICA9IGlycV9jaGlwX3VubWFza19wYXJlbnQs
Cj4gKyAgICAgICAuaXJxX2VuYWJsZSAgICAgPSBzaWZpdmVfaXJxX2VuYWJsZSwKPiArICAgICAg
IC5pcnFfZGlzYWJsZSAgICA9IHNpZml2ZV9pcnFfZGlzYWJsZSwKPiArICAgICAgIC5pcnFfZW9p
ICAgICAgICA9IHNpZml2ZV9pcnFfZW9pLAo+ICt9Owo+ICsKPiArc3RhdGljIGludCBzaWZpdmVf
Z3Bpb19jaGlsZF90b19wYXJlbnRfaHdpcnEoc3RydWN0IGdwaW9fY2hpcCAqZ2MsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGNoaWxk
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVk
IGludCBjaGlsZF90eXBlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVuc2lnbmVkIGludCAqcGFyZW50LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCAqcGFyZW50X3R5cGUpCj4gK3sKPiArICAg
ICAgICpwYXJlbnRfdHlwZSA9IElSUV9UWVBFX05PTkU7Cj4gKyAgICAgICAqcGFyZW50ID0gY2hp
bGQgKyBTSUZJVkVfR1BJT19JUlFfT0ZGU0VUOwo+ICsgICAgICAgcmV0dXJuIDA7Cj4gK30KPiAr
Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2NvbmZpZyBzaWZpdmVfZ3Bpb19yZWdtYXBf
Y29uZmlnID0gewo+ICsgICAgICAgLnJlZ19iaXRzID0gMzIsCj4gKyAgICAgICAucmVnX3N0cmlk
ZSA9IDQsCj4gKyAgICAgICAudmFsX2JpdHMgPSAzMiwKPiArICAgICAgIC5mYXN0X2lvID0gdHJ1
ZSwKPiArICAgICAgIC5kaXNhYmxlX2xvY2tpbmcgPSB0cnVlLAo+ICt9Owo+ICsKPiArc3RhdGlj
IGludCBzaWZpdmVfZ3Bpb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7
Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICsgICAgICAgc3Ry
dWN0IGRldmljZV9ub2RlICpub2RlID0gcGRldi0+ZGV2Lm9mX25vZGU7Cj4gKyAgICAgICBzdHJ1
Y3QgZGV2aWNlX25vZGUgKmlycV9wYXJlbnQ7Cj4gKyAgICAgICBzdHJ1Y3QgaXJxX2RvbWFpbiAq
cGFyZW50Owo+ICsgICAgICAgc3RydWN0IGdwaW9faXJxX2NoaXAgKmdpcnE7Cj4gKyAgICAgICBz
dHJ1Y3Qgc2lmaXZlX2dwaW8gKmNoaXA7Cj4gKyAgICAgICBzdHJ1Y3QgcmVzb3VyY2UgKnJlczsK
PiArICAgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gKyAgICAgICBpbnQgcmV0LCBuZ3BpbzsK
PiArCj4gKyAgICAgICBjaGlwID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCpjaGlwKSwgR0ZQ
X0tFUk5FTCk7Cj4gKyAgICAgICBpZiAoIWNoaXApCj4gKyAgICAgICAgICAgICAgIHJldHVybiAt
RU5PTUVNOwo+ICsKPiArICAgICAgIGNoaXAtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBf
cmVzb3VyY2UocGRldiwgMCk7Cj4gKyAgICAgICBpZiAoSVNfRVJSKGNoaXAtPmJhc2UpKSB7Cj4g
KyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGFsbG9jYXRlIGRldmljZSBt
ZW1vcnlcbiIpOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihjaGlwLT5iYXNlKTsK
PiArICAgICAgIH0KPiArCj4gKyAgICAgICBjaGlwLT5yZWdzID0gZGV2bV9yZWdtYXBfaW5pdF9t
bWlvKGRldiwgY2hpcC0+YmFzZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgJnNpZml2ZV9ncGlvX3JlZ21hcF9jb25maWcpOwo+ICsgICAgICAgaWYgKElTX0VS
UihjaGlwLT5yZWdzKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2hpcC0+cmVn
cyk7Cj4gKwo+ICsgICAgICAgbmdwaW8gPSBvZl9pcnFfY291bnQobm9kZSk7Cj4gKyAgICAgICBp
ZiAobmdwaW8gPj0gTUFYX0dQSU8pIHsKPiArICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJU
b28gbWFueSBHUElPIGludGVycnVwdHMgKG1heD0lZClcbiIsIE1BWF9HUElPKTsKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIC1FTlhJTzsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBpcnFfcGFy
ZW50ID0gb2ZfaXJxX2ZpbmRfcGFyZW50KG5vZGUpOwo+ICsgICAgICAgaWYgKCFpcnFfcGFyZW50
KSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAibm8gSVJRIHBhcmVudCBub2RlXG4i
KTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gKyAgICAgICB9Cj4gKyAgICAg
ICBwYXJlbnQgPSBpcnFfZmluZF9ob3N0KGlycV9wYXJlbnQpOwo+ICsgICAgICAgaWYgKCFwYXJl
bnQpIHsKPiArICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJubyBJUlEgcGFyZW50IGRvbWFp
blxuIik7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+ICsgICAgICAgfQo+ICsK
PiArICAgICAgIHJldCA9IGJncGlvX2luaXQoJmNoaXAtPmdjLCBkZXYsIDQsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgIGNoaXAtPmJhc2UgKyBHUElPX0lOUFVUX1ZBTCwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgY2hpcC0+YmFzZSArIEdQSU9fT1VUUFVUX1ZBTCwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgTlVMTCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgY2hpcC0+YmFz
ZSArIEdQSU9fT1VUUFVUX0VOLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICBjaGlwLT5iYXNl
ICsgR1BJT19JTlBVVF9FTiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgMCk7Cj4gKyAgICAg
ICBpZiAocmV0KSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGlu
aXQgZ2VuZXJpYyBHUElPXG4iKTsKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAg
ICAgIH0KPiArCj4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmY2hpcC0+Z2MuYmdwaW9fbG9j
aywgZmxhZ3MpOwo+ICsgICAgICAgLyogRGlzYWJsZSBhbGwgR1BJTyBpbnRlcnJ1cHRzIGJlZm9y
ZSBlbmFibGluZyBwYXJlbnQgaW50ZXJydXB0cyAqLwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGNo
aXAtPnJlZ3MsIEdQSU9fUklTRV9JRSwgMCk7Cj4gKyAgICAgICByZWdtYXBfd3JpdGUoY2hpcC0+
cmVncywgR1BJT19GQUxMX0lFLCAwKTsKPiArICAgICAgIHJlZ21hcF93cml0ZShjaGlwLT5yZWdz
LCBHUElPX0hJR0hfSUUsIDApOwo+ICsgICAgICAgcmVnbWFwX3dyaXRlKGNoaXAtPnJlZ3MsIEdQ
SU9fTE9XX0lFLCAwKTsKPiArICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmNoaXAtPmdj
LmJncGlvX2xvY2ssIGZsYWdzKTsKCk5vIG5lZWQgZm9yIGxvY2tpbmcgaW4gcHJvYmUoKS4KCj4g
KyAgICAgICBjaGlwLT5lbmFibGVkID0gMDsKPiArCj4gKyAgICAgICBjaGlwLT5nYy5iYXNlID0g
LTE7Cj4gKyAgICAgICBjaGlwLT5nYy5uZ3BpbyA9IG5ncGlvOwo+ICsgICAgICAgY2hpcC0+Z2Mu
bGFiZWwgPSBkZXZfbmFtZShkZXYpOwo+ICsgICAgICAgY2hpcC0+Z2MucGFyZW50ID0gZGV2Owo+
ICsgICAgICAgY2hpcC0+Z2Mub3duZXIgPSBUSElTX01PRFVMRTsKPiArICAgICAgIGdpcnEgPSAm
Y2hpcC0+Z2MuaXJxOwo+ICsgICAgICAgZ2lycS0+Y2hpcCA9ICZzaWZpdmVfaXJxY2hpcDsKPiAr
ICAgICAgIGdpcnEtPmZ3bm9kZSA9IG9mX25vZGVfdG9fZndub2RlKG5vZGUpOwo+ICsgICAgICAg
Z2lycS0+cGFyZW50X2RvbWFpbiA9IHBhcmVudDsKPiArICAgICAgIGdpcnEtPmNoaWxkX3RvX3Bh
cmVudF9od2lycSA9IHNpZml2ZV9ncGlvX2NoaWxkX3RvX3BhcmVudF9od2lycTsKPiArICAgICAg
IGdpcnEtPmhhbmRsZXIgPSBoYW5kbGVfYmFkX2lycTsKPiArICAgICAgIGdpcnEtPmRlZmF1bHRf
dHlwZSA9IElSUV9UWVBFX05PTkU7Cj4gKwo+ICsgICAgICAgcGxhdGZvcm1fc2V0X2RydmRhdGEo
cGRldiwgY2hpcCk7Cj4gKyAgICAgICByZXR1cm4gZ3Bpb2NoaXBfYWRkX2RhdGEoJmNoaXAtPmdj
LCBjaGlwKTsKPiArfQo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgc2lm
aXZlX2dwaW9fbWF0Y2hbXSA9IHsKPiArICAgICAgIHsgLmNvbXBhdGlibGUgPSAic2lmaXZlLGdw
aW8wIiB9LAo+ICsgICAgICAgeyAuY29tcGF0aWJsZSA9ICJzaWZpdmUsZnU1NDAtYzAwMC1ncGlv
IiB9LAo+ICsgICAgICAgeyB9LAo+ICt9Owo+ICsKPiArc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgc2lmaXZlX2dwaW9fZHJpdmVyID0gewo+ICsgICAgICAgLnByb2JlICAgICAgICAgID0g
c2lmaXZlX2dwaW9fcHJvYmUsCj4gKyAgICAgICAuZHJpdmVyID0gewo+ICsgICAgICAgICAgICAg
ICAubmFtZSAgID0gInNpZml2ZV9ncGlvIiwKPiArICAgICAgICAgICAgICAgLm9mX21hdGNoX3Rh
YmxlID0gb2ZfbWF0Y2hfcHRyKHNpZml2ZV9ncGlvX21hdGNoKSwKPiArICAgICAgIH0sCj4gK307
Cj4gK2J1aWx0aW5fcGxhdGZvcm1fZHJpdmVyKHNpZml2ZV9ncGlvX2RyaXZlcikKPiAtLQo+IDIu
Ny40Cj4KCkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cmlzY3YK
