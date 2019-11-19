Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D69102790
	for <lists+linux-riscv@lfdr.de>; Tue, 19 Nov 2019 16:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iHLrAjzoX0MARzszHBA8Mex2EWVmWuIG3U1DTOIzOk=; b=ighl0nOCK9hU67
	Jp6KC1I+J2kbLfFB0UpDIvUN3kPTTGRiAgeAP/B1qss1Pj4dN53kCkiXrjIUjv5N56hJyP+FA0G35
	19NAl4H9V0Od2ByPuj2HDwegWYAEYrRxtRHKndQ/xnxVbyP4qWMcuX68tewwLs/lFVXsoVRqwBIWF
	kPgY+OjzpiC4ktpfLip2tGd4/dTn25qCJDDT4aEiirjz5ZrZsHN4U/ZMwuCEh5hB5hPF6OMR9Da1d
	hdhhW/BHZeOi+a+z3lIZuUd+N50kLvXnP3RXsTiwjO6lovHdPeRanKl8EpHxkqMVRvdH5nvXHICAO
	Fz+mkqyg9U2o6u7FcyKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX529-0007zO-FI; Tue, 19 Nov 2019 15:03:13 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX525-0007yw-Mh
 for linux-riscv@lists.infradead.org; Tue, 19 Nov 2019 15:03:12 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so23732159ljk.0
 for <linux-riscv@lists.infradead.org>; Tue, 19 Nov 2019 07:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PbOCer/DbEIDkV9HM4Ua32e1t8DBngr+pDXysIFGRg8=;
 b=ghhb7CWnwNxAbrzbSuXvrfTWrUaikmjOuxcxbZzhekhweUFV9we26m0KktjuUT12cy
 DozWtpM03n61uITyiCInX3tY4YBxpKlEOG2nSGKyK5N9nZYuhQI7I8nlgr7v9u4WTAiC
 azEp+p7C9AEL7DBegmAPPbrND76N9Jjf0OWzfEkUmTdIa55WHk3ybiz29nshZn4Gtits
 Bc0GjA0BnNBYKZpWPx7MQIa9cxGUQeloQ3M7jYsv2LvZQFDeLGf0L2qUnJTskweJCjCu
 156mBCrJ72nFj2G7luKBxfO5xwCFDuJ3NdbRLreV7CtFnrHx/itCksfMS1Fxmfo83llm
 eq1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PbOCer/DbEIDkV9HM4Ua32e1t8DBngr+pDXysIFGRg8=;
 b=CVrXzZGr0alOLsu31ha7090Iyc3Rx0OJT8bE0GTZf5cZ10f9LMjcCM9SQ6ExHZCMK3
 VHbknBnBw1eE4F2qFA/w4FpvMS0Cid/EbPaKQilk/xyp0Us2S8Bb7bjhodgI96cmQamz
 Rk4Wh9Q9qPoSKWMwgStdegByOswt0D3fMZV5stRSvVuc82+eLJXJfNQhTH+zeLatYWkc
 dYK7s0RbqUuVke6i19OtYYkzLQo23ZSbvTQ53zbNEoVejGwfWC9PModfOc2lbjLV2nv0
 75cXBHFrLjHtF+KcYf3HgexxN4zJEmBnyvzheD8lZonuKtINbDVuWMj8skTxub5nyWuh
 6TTA==
X-Gm-Message-State: APjAAAWrKJITiANDvrM3I5ZkkuS2Z6udDvo2hR/YwQd8qGkg3qfn8kda
 C0PvHi3qxh7GnOsxA5k4Wbf3QKdpDuDAfoxCY2/Y6g==
X-Google-Smtp-Source: APXvYqxK4BLaj4M+k3bwc7DPGWsPytu2MBOD+HBWoGml8EjxWn/fiVfiTHJU/tL8gTg0U5x+X6BHUCC0vamRMq4wY+M=
X-Received: by 2002:a2e:8597:: with SMTP id b23mr4384572lji.218.1574175787982; 
 Tue, 19 Nov 2019 07:03:07 -0800 (PST)
MIME-Version: 1.0
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
 <CAMpxmJWcuV7goPWxOWv_Og9GwzGrioF62SfS1LCiHf9eDX=vdw@mail.gmail.com>
 <CH2PR13MB33680443C101511E66ECADF08C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <CAMpxmJU+P=nWe9fpp45Jw=GwX3+V0sVVshRcE7AD1Kyz_F0qJQ@mail.gmail.com>
In-Reply-To: <CAMpxmJU+P=nWe9fpp45Jw=GwX3+V0sVVshRcE7AD1Kyz_F0qJQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Nov 2019 16:02:56 +0100
Message-ID: <CACRpkdb9KKPsu7dkjVmHbgQcdo1Zx9uC_jtd6HFwM+RO2EA4nw@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_070309_767934_17F0A087 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMTE6MTUgQU0gQmFydG9zeiBHb2xhc3pld3NraQo8Ymdv
bGFzemV3c2tpQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4gcG9uLiwgMTggbGlzIDIwMTkgbyAxMTow
MyBZYXNoIFNoYWggPHlhc2guc2hhaEBzaWZpdmUuY29tPiBuYXBpc2HFgihhKToKCj4gPiBBcyBz
dWdnZXN0ZWQgaW4gdGhlIGNvbW1lbnRzIHJlY2VpdmVkIG9uIHRoZSBSRkMgdmVyc2lvbiBvZiB0
aGlzIHBhdGNoWzBdLCBJIGFtIHRyeWluZyB0byB1c2UgcmVnbWFwIE1NSU8gYnkgbG9va2luZyBh
dCBncGlvLW12ZWJ1LmMuIEkgZ290IHlvdXIgcG9pbnQgcmVnYXJkaW5nIHRoZSB1c2FnZSBvZiBv
d24gbG9ja3MgaXMgbm90IG1ha2luZyBhbnkgc2Vuc2UuCj4gPiBIZXJlIGlzIHdoYXQgSSB3aWxs
IGRvIGluIHYyOgo+ID4gMS4gZHJvcCB0aGUgdXNhZ2Ugb2Ygb3duIGxvY2tzCj4gPiAyLiBjb25z
aXN0ZW50bHkgdXNlIHJlZ21hcF8qIGFwaXMgZm9yIHJlZ2lzdGVyIGFjY2VzcyAocmVwbGFjZSBh
bGwgaW93cml0ZXMpLgo+ID4gRG9lcyB0aGlzIG1ha2Ugc2Vuc2Ugbm93Pwo+Cj4gVGhlIHRoaW5n
IGlzOiB0aGUgZ3Bpby1tbWlvIGNvZGUgeW91J3JlIChjb3JyZWN0bHkpIHJldXNpbmcgdXNlcyBh
Cj4gZGlmZmVyZW50IGxvY2sgLSBuYW1lbHk6IGJncGlvX2xvY2sgaW4gc3RydWN0IGdwaW9fY2hp
cC4gSWYgeW91IHdhbnQKPiB0byB1c2UgcmVnbWFwIGZvciByZWdpc3RlciBvcGVyYXRpb25zLCB0
aGVuIHlvdSBuZWVkIHRvIHNldAo+IGRpc2FibGVfbG9ja2luZyBpbiByZWdtYXBfY29uZmlnIHRv
IHRydWUgYW5kIHRoZW4gdGFrZSB0aGlzIGxvY2sKPiBtYW51YWxseSBvbiBldmVyeSBhY2Nlc3Mu
CgpJcyBpdCByZWFsbHkgc28/IFRoZSBiZ3Bpb19sb2NrIGRvZXMgcHJvdGVjdCB0aGUgcmVnaXN0
ZXJzIHVzZWQKYnkgcmVnbWFwLW1taW8gYnV0IHVubGVzcyB0aGUgaW50ZXJydXB0IGNvZGUgaXMg
YWxzbyB1c2luZyB0aGUKc2FtZSByZWdpc3RlcnMgaXQgaXMgZmluZSB0byBoYXZlIGEgZGlmZmVy
ZW50IGxvY2sgZm9yIHRob3NlLgoKSXMgdGhlIGludGVycnVwdCBjb2RlIHJlYWxseSBwb2tpbmcg
aW50byB0aGUgdmVyeSBzYW1lIHJlZ2lzdGVycwphcyBwYXNzZWQgdG8gYmdwaW9faW5pdCgpPwoK
T2YgY291cnNlIGl0IGNvdWxkIGJlIHNlZW4gYXMgYSBiaXQgZGlydHkgdG8gcG9rZSBhcm91bmQg
aW4gdGhlCnNhbWUgbWVtb3J5IHNwYWNlIHdpdGggcmVnbWFwIGFuZCB0aGUgYmdwaW9fKiBhY2Nl
c3NvcnMKYnV0IGluIHByYWN0aWNlIGl0J3Mgbm8gcHJvYmxlbSBpZiB0aGV5IG5ldmVyIHRvdWNo
IHRoZSBzYW1lCnRoaW5ncy4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QK
bGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
