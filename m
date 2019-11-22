Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DFA10724A
	for <lists+linux-riscv@lfdr.de>; Fri, 22 Nov 2019 13:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lixrbFPyR/UKTH1phuaokyLEW8jRRbyy84If8OrdfY=; b=AqGxABHxQ2SiKI
	onFPKvCz8aUbjP3bMUK1+Tzt8pMxDm/aFSO4+glun1iPYyau62hHjg5q4/cHUdIbNgVecLOqPJM14
	waPupto885IKs3vRavt7sBjzUaiHmuPkqsXzyh5brjH63E9vEC0I0e5QjRL5BRcZaoqcg2G3Ettka
	fEkN6Fjpa1icCfjv4Qx2A/ORR12w6zEuFEhIWnZInt8WGQDaiqLZYVaPjxfbAiGi23sWoF448la7g
	r8Ce9h+mtGzqRjNybTNVPwId5ElE/BhW2gqSHJFsSSvfUeoFMEiKmVuRV2BzEXmWGEIipiKLGwmEV
	FUZwSoR0fvt0pwLCxttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8Dr-0003H2-Rp; Fri, 22 Nov 2019 12:39:39 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8Do-0003G9-Aq
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 12:39:38 +0000
Received: by mail-ot1-x343.google.com with SMTP id l14so5998340oti.10
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 04:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pIaE2t8kEhzDVYCOk21I3VO5ugELTHI5U7MvhDfP+Bw=;
 b=wPFNW57zKwWO86/8XbUcXJJRoWhRtgaz8SFbCVb3kzCZs5NoKJ5NAi5XITr/5axrWF
 7t/bmKwgoI/qdkwMUMKfuO+JQl+KF3HA6koatw564ZgsHkf3LTN617naBAfhOMLIk1jZ
 UHtrysleLqU2AQjrR/Qy+bepkiaXKqSBtTLbQlDmapNYB9kdfzlMSB4DFre/jEwUF15D
 P4ChWAELcH4Fly7afKA1+MiGJLmLKPBjBPpU+ZSFXBtlLmgYQEerSeMbL04k3cDXdeYH
 u658C2PbUnrGIPJl+JsiWXXiN0wUe5kS+NfcvxGIKAHHshIVt2KylgTsXH3ib1SkOmx6
 Rosg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pIaE2t8kEhzDVYCOk21I3VO5ugELTHI5U7MvhDfP+Bw=;
 b=HgJudVJk2yPdEAOS2aj4cG8dA2J49dhg/vpOM0SRpUvJv/9/OX4A2tfEqjeEIlRntf
 Y1g/FlKWGEb2Hm/ggnNndIvkEhroFEmmq0ayYK2thbrglxQXlupbvmB/JipYKZlQN+Pa
 HGsX+WuAgYS0VEDlaXE96l0l4+qML9gfIt/WOxx098Qx2ReYHIU5j52jTiIMUpCoCudV
 jlWJfTkrCe4X62c/IsEzNX+nl9Suficz03CDvNEiN/XaaSxblPaOx2AQvi/v8X8qmUUP
 Zh9HBH9y3Lr52BkR1B4kut0iSfype9ZwHoVwUy1ufH8Z7wsQhB6MgaxPPAkTHhfx5L3v
 SUWg==
X-Gm-Message-State: APjAAAUA6860l34+LtMTxy12KbdWdwr3T7fiyVnd/IfmGq8+u6nlKVRK
 soPfKHoc2vdGQ1YFIWIonje0gZ+nk4KDqhoa2yh2mQ==
X-Google-Smtp-Source: APXvYqxKHhBekxA9nnYnqjLUFq+26q+Pt7iPthEshyRausyypcoh9ry3D5ayg7l4W/Vg0xxTE7p87Rqo7hkmAImYaDM=
X-Received: by 2002:a9d:17ca:: with SMTP id j68mr10551757otj.250.1574426371219; 
 Fri, 22 Nov 2019 04:39:31 -0800 (PST)
MIME-Version: 1.0
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
 <CAMpxmJWcuV7goPWxOWv_Og9GwzGrioF62SfS1LCiHf9eDX=vdw@mail.gmail.com>
 <CH2PR13MB33680443C101511E66ECADF08C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <CAMpxmJU+P=nWe9fpp45Jw=GwX3+V0sVVshRcE7AD1Kyz_F0qJQ@mail.gmail.com>
 <CACRpkdb9KKPsu7dkjVmHbgQcdo1Zx9uC_jtd6HFwM+RO2EA4nw@mail.gmail.com>
 <CAMpxmJXFK4VLgJU+P0ZMNkduGfFxAeQ_NguRHtedf7cRPav7LQ@mail.gmail.com>
 <CACRpkdaDmd+0809wmiNwSRbsdHaDNzpbOaxCcx6bEfYuyzPNQg@mail.gmail.com>
In-Reply-To: <CACRpkdaDmd+0809wmiNwSRbsdHaDNzpbOaxCcx6bEfYuyzPNQg@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 22 Nov 2019 13:39:20 +0100
Message-ID: <CAMpxmJUq_YLU4ha1hTzDUKYMxD36Yb-6C3SraMHgZywx=bm=eA@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_043936_374180_00654774 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

cHQuLCAyMiBsaXMgMjAxOSBvIDEzOjI4IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4gbmFwaXNhxYIoYSk6Cj4KPiBPbiBUdWUsIE5vdiAxOSwgMjAxOSBhdCA1OjQyIFBN
IEJhcnRvc3ogR29sYXN6ZXdza2kKPiA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4gd3JvdGU6
Cj4gPiB3dC4sIDE5IGxpcyAyMDE5IG8gMTY6MDMgTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVp
akBsaW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPiA+ID4gT24gTW9uLCBOb3YgMTgsIDIwMTkgYXQg
MTE6MTUgQU0gQmFydG9zeiBHb2xhc3pld3NraQo+ID4gPiA8YmdvbGFzemV3c2tpQGJheWxpYnJl
LmNvbT4gd3JvdGU6Cj4KPiA+ID4gPiBwb24uLCAxOCBsaXMgMjAxOSBvIDExOjAzIFlhc2ggU2hh
aCA8eWFzaC5zaGFoQHNpZml2ZS5jb20+IG5hcGlzYcWCKGEpOgo+ID4gPiBJcyBpdCByZWFsbHkg
c28/IFRoZSBiZ3Bpb19sb2NrIGRvZXMgcHJvdGVjdCB0aGUgcmVnaXN0ZXJzIHVzZWQKPiA+ID4g
YnkgcmVnbWFwLW1taW8gYnV0IHVubGVzcyB0aGUgaW50ZXJydXB0IGNvZGUgaXMgYWxzbyB1c2lu
ZyB0aGUKPiA+ID4gc2FtZSByZWdpc3RlcnMgaXQgaXMgZmluZSB0byBoYXZlIGEgZGlmZmVyZW50
IGxvY2sgZm9yIHRob3NlLgo+ID4gPgo+ID4gPiBJcyB0aGUgaW50ZXJydXB0IGNvZGUgcmVhbGx5
IHBva2luZyBpbnRvIHRoZSB2ZXJ5IHNhbWUgcmVnaXN0ZXJzCj4gPiA+IGFzIHBhc3NlZCB0byBi
Z3Bpb19pbml0KCk/Cj4gPiA+Cj4gPiA+IE9mIGNvdXJzZSBpdCBjb3VsZCBiZSBzZWVuIGFzIGEg
Yml0IGRpcnR5IHRvIHBva2UgYXJvdW5kIGluIHRoZQo+ID4gPiBzYW1lIG1lbW9yeSBzcGFjZSB3
aXRoIHJlZ21hcCBhbmQgdGhlIGJncGlvXyogYWNjZXNzb3JzCj4gPiA+IGJ1dCBpbiBwcmFjdGlj
ZSBpdCdzIG5vIHByb2JsZW0gaWYgdGhleSBuZXZlciB0b3VjaCB0aGUgc2FtZQo+ID4gPiB0aGlu
Z3MuCj4gPiA+Cj4gPiA+IFlvdXJzLAo+ID4gPiBMaW51cyBXYWxsZWlqCj4gPgo+ID4gSSdtIHdv
bmRlcmluZyBpZiBpdCB3b24ndCBjYXVzZSBhbnkgaW5jb25zaXN0ZW5jaWVzIHdoZW4gZm9yIGV4
YW1wbGUKPiA+IGludGVycnVwdHMgYXJlIGJlaW5nIHRyaWdnZXJlZCBvbiBpbnB1dCBsaW5lcyB3
aGlsZSB3ZSdyZSBhbHNvIHJlYWRpbmcKPiA+IHRoZWlyIHZhbHVlcz8gU2VlbXMgdG8gbWUgaXQn
cyBqdXN0IG1vcmUgY2xlYXIgdG8gdXNlIGEgc2luZ2xlIGxvY2sKPiA+IGZvciBhIHJlZ2lzdGVy
IHJhbmdlLiBNb3N0IGRyaXZlcnMgdXNpbmcgZ3Bpby1tbWlvIGRvIGp1c3QgdGhhdCBpbgo+ID4g
dGhlaXIgaXJxLXJlbGF0ZWQgcm91dGluZXMuCj4KPiBPSyBnb29kIHBvaW50LiBKdXN0IG9uZSBs
b2NrIGZvciB0aGUgd2hvbGUgdGhpbmcgaXMgbGlrZWx5Cj4gbW9yZSBtYWludGFpbmFibGUgZXZl
biBpZiBpdCB3b3JrcyB3aXRoIHR3byBkaWZmZXJlbnQgbG9ja3MuCj4KPiA+IEFueXdheTogZXZl
biB3aXRob3V0IHVzaW5nIGJncGlvX2xvY2sgdGhpcyBjb2RlIGlzIGluY29uc2lzdGVudDogaWYK
PiA+IHdlJ3JlIHVzaW5nIHJlZ21hcCBmb3IgaW50ZXJydXB0IHJlZ2lzdGVycywgd2Ugc2hvdWxk
IGVpdGhlciBkZWNpZGUgdG8KPiA+IHJlbHkgb24gbG9ja2luZyBwcm92aWRlZCBieSByZWdtYXAg
b3IgZGlzYWJsZSBpdCBhbmQgdXNlIGEgbG9jYWxseQo+ID4gZGVmaW5lZCBsb2NrLgo+Cj4gT0sg
bWFrZXMgc2Vuc2UsIGxldCdzIHNheSB3ZSB1c2UgdGhlIGJncGlvX2xvY2sgZXZlcnl3aGVyZQo+
IGZvciB0aGlzLgo+Cj4gWWFzaDogYXJlIHlvdSBPSyB3aXRoIHRoaXM/IChIYXZlbid0IHJlYWQg
dGhlIG5ldyBwYXRjaCBzZXQKPiB5ZXQsIG1heWJlIGl0IGlzIGFscmVhZHkgZml4ZWQuLi4pCj4K
PiA+IEFsc286IGlmIHdlJ3JlIHVzaW5nIHJlZ21hcCwgdGhlbiBsZXQncyB1c2UgaXQKPiA+IGV2
ZXJ5d2hlcmUsIG5vdCBvbmx5IHdoZW4gaXQncyBjb252ZW5pZW50IGZvciB1cGRhdGluZyByZWdp
c3RlcnMuCj4KPiBJIHRoaW5rIHdoYXQgeW91IGFyZSBzYXlpbmcgaXMgdGhhdCB3ZSBzaG91bGQg
ZXh0ZW5kIGdwaW8tbW1pby5jCj4gd2l0aCBzb21lIG9wdGlvbmFsIHJlZ21hcCBBUEkgKG9yIGNy
ZWF0ZSBhIHNlcGFyYXRlIE1NSU8gbGlicmFyeQo+IGZvciByZWdtYXAgY29uc3VtZXJzKSB3aGlj
aCBtYWtlcyBzZW5zZSwgYnV0IGl0IGZlZWxzIGEgYml0Cj4gaGVhdnkgdGFzayB0byB0b3NzIGF0
IGNvbnRyaWJ1dG9ycy4KPgo+IFdlIGNvdWxkIGFkZCBpdCB0byB0aGUgVE9ETyBmaWxlLCB3aGVy
ZSBJIGFscmVhZHkgaGF2ZSBzb21lCj4gaXRlbSBsaWtlIHRoaXMgZm9yIHBvcnQtbWFwcGVkIEkv
Ty4KPgoKSXQncyBiZWVuIG9uIG15IHBlcnNvbmFsIFRPRE8gbGlzdCB0b28gZm9yIHNvbWUgdGlt
ZSBhcyBpdCBzZWVtcyBpdApjb3VsZCBiZW5lZml0IHNvbWUgaTJjIGRyaXZlcnMgdG9vLiBBbHNv
OiBJIHRoaW5rIHN1Y2ggYSBoZWxwZXIgY291bGQKZXZlbnR1YWxseSBjb21wbGV0ZWx5IHJlcGxh
Y2UgdGhlIGdlbmVyaWMgZHJpdmVycyBzdWNoIGFzIGdwaW8tbW1pbwphbmQgZ3Bpby1yZWcuCgpJ
biBvdGhlciB3b3JkczogZ29vZCBpZGVhIHRvIHB1dCBpdCBpbnRvIHRoZSBUT0RPLiBJZiB0aGVy
ZSBhcmUgbm8Kb2JqZWN0aW9ucyBJIHdhcyB0aGlua2luZyBhYm91dCBzdGFydGluZyB0aGUgd29y
ayBzb29uIGFpbWluZyBhdCB2NS42LAphcyBzb29uIGFzIHdlIGdldCB0aGUgcmVjZW50IGNoYW5n
ZXMgaW4gdUFQSSBvdXQgb2YgdGhlIHdheS4KCkJhcnQKCj4gWW91cnMsCj4gTGludXMgV2FsbGVp
agoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
cmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
