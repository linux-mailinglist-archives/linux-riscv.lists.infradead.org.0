Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5023102994
	for <lists+linux-riscv@lfdr.de>; Tue, 19 Nov 2019 17:42:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzR73AaBhJQV6aNubERaSKkTXLggSpmqoqDAulHPPm4=; b=AGbtXj+R2G0UJO
	bdle13PpMIZPhzXiBKPNsSKEUy5qYVb9cOc+EKvLqtdvHgBNXTe0s05KzVspRO/xuHvkFn4zzeq7x
	vnR+k182vuF/wBbEx4/Vv8gy515FUFbWOb60KvhloGYSEtyQIiv5OPrTFGgvQgQHLvocwjS+FLTZA
	bY13IYHsOXqHnlUNzONdeK0bJGNjuSOX5DA9R3g6w+WVExmlDqFmCDkOgvgu8Ikeq6mWejAIcjHto
	O5k5hnouHfW80t6ip9P7L3NJZRFsJsUqK4JxIQghU5eF2jtxufUdoOige7EUqfkAnW+Xh1unT7fz8
	GxXta3iiIModEUANAX0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX6Zr-0003vb-Hs; Tue, 19 Nov 2019 16:42:07 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX6Zo-0003uw-BV
 for linux-riscv@lists.infradead.org; Tue, 19 Nov 2019 16:42:06 +0000
Received: by mail-oi1-x244.google.com with SMTP id l202so19563266oig.1
 for <linux-riscv@lists.infradead.org>; Tue, 19 Nov 2019 08:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=A85TSNGm7K+RaBadsnUIp68Z/l71MMMOUNnCgewKA6o=;
 b=rDYaNUkKwdtjQmvpcam2qztShQlW76Pc8zjxt/wXQAa+sN+7wq1ibiMHNVLaCA5xiG
 bDiZxs2feFBg8/bmAz8uQd79vrNhEtMpym5aj9KMJIMWiUbScrYVkXVn8Ko3wJHaevUC
 57WQYZC7Y5g56OuhbCzkpK3MyK2eHC5PnsNsA5V4R//hrCitv/yC/2ovRGLZgO1jhw3g
 lMw/+8NGpmZQ32Wf64BJ/vKH8kNESrNTR7OkUBdH/B13nEqEwy1lG84J/mz9w5T7ye8X
 G+lk2Aro1GziU8QmVGglBsE3fXSg8HtAQoVoJhIhFy/gI+GCTaqffAOpAYTYFs5+otuf
 Lb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=A85TSNGm7K+RaBadsnUIp68Z/l71MMMOUNnCgewKA6o=;
 b=a/5gZyFHkMN6UC6fgAezVPrk1txuqvSbbU8fU1paoSXRgKonoc8HxfPdEeRaJ69gP2
 hkeVlspJd/pN8t3xfUOMSOvkFTwdyoUmGg/UL9I7rwaLfxzQ/33yXcHMF2OVoV0sU50j
 f20zF9p8augc/9MB4EXCb2TpRhlVOfrta6b2EHHs2Cn5PPYRkBNCLJkMAdl5LgEKZh1x
 83fnWQXJH5zGLNcRQ1Frj9e6x6SfuU7KJH/IA51DXvq9CDJo9GcL7x3X8XLpwCYgNmRD
 qtt/VnuAqTTreaqnehobC9/J7vSgrP3K3XzwXMU5Xlr00CbdSrvwA1g1RZyl71Zo8i7U
 vgBg==
X-Gm-Message-State: APjAAAVd/Of0ztiYO95Xcw9thDHkqun+8SfgSNdfp+fRMiAwkehoAD8B
 UxCyhtW4ZUv5PZavyLntUmH0Sf4pIBTOc2CTyT/YrQ==
X-Google-Smtp-Source: APXvYqx7cskxLkBBXBA7knh9DkcCJarVIobwkve0fLSrrww5YHLowJhAvBe1oJj6wFqp95kT/WCRIqkTRDLrTMPc5L0=
X-Received: by 2002:a05:6808:9a1:: with SMTP id
 e1mr5012423oig.175.1574181722495; 
 Tue, 19 Nov 2019 08:42:02 -0800 (PST)
MIME-Version: 1.0
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
 <CAMpxmJWcuV7goPWxOWv_Og9GwzGrioF62SfS1LCiHf9eDX=vdw@mail.gmail.com>
 <CH2PR13MB33680443C101511E66ECADF08C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <CAMpxmJU+P=nWe9fpp45Jw=GwX3+V0sVVshRcE7AD1Kyz_F0qJQ@mail.gmail.com>
 <CACRpkdb9KKPsu7dkjVmHbgQcdo1Zx9uC_jtd6HFwM+RO2EA4nw@mail.gmail.com>
In-Reply-To: <CACRpkdb9KKPsu7dkjVmHbgQcdo1Zx9uC_jtd6HFwM+RO2EA4nw@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 19 Nov 2019 17:41:51 +0100
Message-ID: <CAMpxmJXFK4VLgJU+P0ZMNkduGfFxAeQ_NguRHtedf7cRPav7LQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_084204_444948_08FF74C9 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, Yash Shah <yash.shah@sifive.com>,
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

d3QuLCAxOSBsaXMgMjAxOSBvIDE2OjAzIExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPiBPbiBNb24sIE5vdiAxOCwgMjAxOSBhdCAxMToxNSBB
TSBCYXJ0b3N6IEdvbGFzemV3c2tpCj4gPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+IHdyb3Rl
Ogo+ID4gcG9uLiwgMTggbGlzIDIwMTkgbyAxMTowMyBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZp
dmUuY29tPiBuYXBpc2HFgihhKToKPgo+ID4gPiBBcyBzdWdnZXN0ZWQgaW4gdGhlIGNvbW1lbnRz
IHJlY2VpdmVkIG9uIHRoZSBSRkMgdmVyc2lvbiBvZiB0aGlzIHBhdGNoWzBdLCBJIGFtIHRyeWlu
ZyB0byB1c2UgcmVnbWFwIE1NSU8gYnkgbG9va2luZyBhdCBncGlvLW12ZWJ1LmMuIEkgZ290IHlv
dXIgcG9pbnQgcmVnYXJkaW5nIHRoZSB1c2FnZSBvZiBvd24gbG9ja3MgaXMgbm90IG1ha2luZyBh
bnkgc2Vuc2UuCj4gPiA+IEhlcmUgaXMgd2hhdCBJIHdpbGwgZG8gaW4gdjI6Cj4gPiA+IDEuIGRy
b3AgdGhlIHVzYWdlIG9mIG93biBsb2Nrcwo+ID4gPiAyLiBjb25zaXN0ZW50bHkgdXNlIHJlZ21h
cF8qIGFwaXMgZm9yIHJlZ2lzdGVyIGFjY2VzcyAocmVwbGFjZSBhbGwgaW93cml0ZXMpLgo+ID4g
PiBEb2VzIHRoaXMgbWFrZSBzZW5zZSBub3c/Cj4gPgo+ID4gVGhlIHRoaW5nIGlzOiB0aGUgZ3Bp
by1tbWlvIGNvZGUgeW91J3JlIChjb3JyZWN0bHkpIHJldXNpbmcgdXNlcyBhCj4gPiBkaWZmZXJl
bnQgbG9jayAtIG5hbWVseTogYmdwaW9fbG9jayBpbiBzdHJ1Y3QgZ3Bpb19jaGlwLiBJZiB5b3Ug
d2FudAo+ID4gdG8gdXNlIHJlZ21hcCBmb3IgcmVnaXN0ZXIgb3BlcmF0aW9ucywgdGhlbiB5b3Ug
bmVlZCB0byBzZXQKPiA+IGRpc2FibGVfbG9ja2luZyBpbiByZWdtYXBfY29uZmlnIHRvIHRydWUg
YW5kIHRoZW4gdGFrZSB0aGlzIGxvY2sKPiA+IG1hbnVhbGx5IG9uIGV2ZXJ5IGFjY2Vzcy4KPgo+
IElzIGl0IHJlYWxseSBzbz8gVGhlIGJncGlvX2xvY2sgZG9lcyBwcm90ZWN0IHRoZSByZWdpc3Rl
cnMgdXNlZAo+IGJ5IHJlZ21hcC1tbWlvIGJ1dCB1bmxlc3MgdGhlIGludGVycnVwdCBjb2RlIGlz
IGFsc28gdXNpbmcgdGhlCj4gc2FtZSByZWdpc3RlcnMgaXQgaXMgZmluZSB0byBoYXZlIGEgZGlm
ZmVyZW50IGxvY2sgZm9yIHRob3NlLgo+Cj4gSXMgdGhlIGludGVycnVwdCBjb2RlIHJlYWxseSBw
b2tpbmcgaW50byB0aGUgdmVyeSBzYW1lIHJlZ2lzdGVycwo+IGFzIHBhc3NlZCB0byBiZ3Bpb19p
bml0KCk/Cj4KPiBPZiBjb3Vyc2UgaXQgY291bGQgYmUgc2VlbiBhcyBhIGJpdCBkaXJ0eSB0byBw
b2tlIGFyb3VuZCBpbiB0aGUKPiBzYW1lIG1lbW9yeSBzcGFjZSB3aXRoIHJlZ21hcCBhbmQgdGhl
IGJncGlvXyogYWNjZXNzb3JzCj4gYnV0IGluIHByYWN0aWNlIGl0J3Mgbm8gcHJvYmxlbSBpZiB0
aGV5IG5ldmVyIHRvdWNoIHRoZSBzYW1lCj4gdGhpbmdzLgo+Cj4gWW91cnMsCj4gTGludXMgV2Fs
bGVpagoKSSdtIHdvbmRlcmluZyBpZiBpdCB3b24ndCBjYXVzZSBhbnkgaW5jb25zaXN0ZW5jaWVz
IHdoZW4gZm9yIGV4YW1wbGUKaW50ZXJydXB0cyBhcmUgYmVpbmcgdHJpZ2dlcmVkIG9uIGlucHV0
IGxpbmVzIHdoaWxlIHdlJ3JlIGFsc28gcmVhZGluZwp0aGVpciB2YWx1ZXM/IFNlZW1zIHRvIG1l
IGl0J3MganVzdCBtb3JlIGNsZWFyIHRvIHVzZSBhIHNpbmdsZSBsb2NrCmZvciBhIHJlZ2lzdGVy
IHJhbmdlLiBNb3N0IGRyaXZlcnMgdXNpbmcgZ3Bpby1tbWlvIGRvIGp1c3QgdGhhdCBpbgp0aGVp
ciBpcnEtcmVsYXRlZCByb3V0aW5lcy4KCkFueXdheTogZXZlbiB3aXRob3V0IHVzaW5nIGJncGlv
X2xvY2sgdGhpcyBjb2RlIGlzIGluY29uc2lzdGVudDogaWYKd2UncmUgdXNpbmcgcmVnbWFwIGZv
ciBpbnRlcnJ1cHQgcmVnaXN0ZXJzLCB3ZSBzaG91bGQgZWl0aGVyIGRlY2lkZSB0bwpyZWx5IG9u
IGxvY2tpbmcgcHJvdmlkZWQgYnkgcmVnbWFwIG9yIGRpc2FibGUgaXQgYW5kIHVzZSBhIGxvY2Fs
bHkKZGVmaW5lZCBsb2NrLiBBbHNvOiBpZiB3ZSdyZSB1c2luZyByZWdtYXAsIHRoZW4gbGV0J3Mg
dXNlIGl0CmV2ZXJ5d2hlcmUsIG5vdCBvbmx5IHdoZW4gaXQncyBjb252ZW5pZW50IGZvciB1cGRh
dGluZyByZWdpc3RlcnMuCgpCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJpc2N2Cg==
