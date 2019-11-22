Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CE1107226
	for <lists+linux-riscv@lfdr.de>; Fri, 22 Nov 2019 13:28:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSTDmIIg7/RWX7r42wh+IyGvzXVXw/B33U4FBC9liR4=; b=SSiGsehk3wc3m9
	DH6jYPKZ+D/2xnNuj8e5mghLk8COH3BdtV0Xo1X6Q++M26hoES9A5c2AkLGikfpq1cePHIB2hLmJs
	niav2/J7mpOaOqUtxgrmMHPOkzC+IOWyUTe914AWtDz/sq/zGooP8ytFqSajeJlehvkuitvQlqrvm
	sZO4e26J1sYlD4J+5AUHUOjoHF7gRsYx1GjlUpU2rHtmJnSpvZdYtEhWOq+cHIpCauQr0q7jrIRTD
	fgTxbyuNF6OE0Gd09Na+qj/HMtvR/w1ruEPm6NWT+2bthdyflEYiM6V5WrVjPwbNgD3NHQLklaHBr
	xEINbf+O4fqQXe6BaEPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY834-00087s-JD; Fri, 22 Nov 2019 12:28:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY830-00087R-Ab
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 12:28:27 +0000
Received: by mail-lj1-x244.google.com with SMTP id n21so7109269ljg.12
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 04:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Sb0l5wZZ4x3uEUBJJPu8/Qg1fPjfMYDDa2uRl9Za+6g=;
 b=dEr2jjn9fgOjdiaDJE2cZkZfXprKxiCesiH6JGQ81KlVLsOAGLk2zI3vm3VTxAW/Dt
 ZAWD9BggBEV7m9WWyDmoJLJQLBLAb655y6NgNk/WDLD6uEI/O8S08ynaATwcY9j91g/X
 oz6jR2QHAF05zYR4+HVWmCa5e4flLcECiB+55HYKL/QYKAUVUIgkRwnch+WdQq8HQQeX
 wKKBM4IOSVLQf4ztqRZ0MjhDejiodCApagsb6m9creQc3gJ83j5p+55dvpS01vvlXDsE
 /HJ54qBLHQD9VnBEpRVhFG/r3OLcZpVj7BTpKPDCMJV9fuFmPgFiiNrbj/+bvDGzfw1v
 ZjwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Sb0l5wZZ4x3uEUBJJPu8/Qg1fPjfMYDDa2uRl9Za+6g=;
 b=NvCgwF9NDPwCFK1tFZy3ShGBEG2Yg/JJ3SH4qe1KqtXJn6hE5HuwCYsNTLRKzoK0Hy
 jIinuWNlye0prF6lldVcnO4Oy5xqTqX0y0K78jGy0tePJTAPCaVMlOBNv3IjA3kQEaMX
 P3VcGa44wUCqtbk4QJGiIsbwkxmG4f1Rld7Fe3oVtu7X28PI9mgY3qI0ZLJ8xZPRZV5a
 qLxW6trjC6J9vMrlvP4Xgc+CX+9szrWW0yNCGAqO0vEsFSAZLndtKriL8EgcF48+EDWe
 hUBebcNAACG9Fgm9VhDK0WJnki+wiuwJPjN+ilTAxWa2TMPGZVLLGXYGph/ojElhGQWf
 jn2w==
X-Gm-Message-State: APjAAAUqUtdiHXrE5CvW7Ui+ss+1VfDW32wyxHdwIdteW9UNXyLAq0B0
 n71LuN2Q0kNf86zqGeWFdFm6/1S1zxGdaFM6VqCRHw==
X-Google-Smtp-Source: APXvYqyEr875KK6+Z3AoTFLNHg9GG1Nc70IgJCEP8t2ZeLuj4RGoP4v/mkCP2LZsVpBsQMxyu52/73Y3stYR9or4KTU=
X-Received: by 2002:a2e:9699:: with SMTP id q25mr12078801lji.251.1574425704107; 
 Fri, 22 Nov 2019 04:28:24 -0800 (PST)
MIME-Version: 1.0
References: <1573560684-48104-1-git-send-email-yash.shah@sifive.com>
 <1573560684-48104-4-git-send-email-yash.shah@sifive.com>
 <CAMpxmJWcuV7goPWxOWv_Og9GwzGrioF62SfS1LCiHf9eDX=vdw@mail.gmail.com>
 <CH2PR13MB33680443C101511E66ECADF08C4D0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <CAMpxmJU+P=nWe9fpp45Jw=GwX3+V0sVVshRcE7AD1Kyz_F0qJQ@mail.gmail.com>
 <CACRpkdb9KKPsu7dkjVmHbgQcdo1Zx9uC_jtd6HFwM+RO2EA4nw@mail.gmail.com>
 <CAMpxmJXFK4VLgJU+P0ZMNkduGfFxAeQ_NguRHtedf7cRPav7LQ@mail.gmail.com>
In-Reply-To: <CAMpxmJXFK4VLgJU+P0ZMNkduGfFxAeQ_NguRHtedf7cRPav7LQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Nov 2019 13:28:12 +0100
Message-ID: <CACRpkdaDmd+0809wmiNwSRbsdHaDNzpbOaxCcx6bEfYuyzPNQg@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: sifive: Add GPIO driver for SiFive SoCs
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_042826_395878_D2488CB9 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gVHVlLCBOb3YgMTksIDIwMTkgYXQgNTo0MiBQTSBCYXJ0b3N6IEdvbGFzemV3c2tpCjxiZ29s
YXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKPiB3dC4sIDE5IGxpcyAyMDE5IG8gMTY6MDMg
TGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPiA+
IE9uIE1vbiwgTm92IDE4LCAyMDE5IGF0IDExOjE1IEFNIEJhcnRvc3ogR29sYXN6ZXdza2kKPiA+
IDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPiB3cm90ZToKCj4gPiA+IHBvbi4sIDE4IGxpcyAy
MDE5IG8gMTE6MDMgWWFzaCBTaGFoIDx5YXNoLnNoYWhAc2lmaXZlLmNvbT4gbmFwaXNhxYIoYSk6
Cj4gPiBJcyBpdCByZWFsbHkgc28/IFRoZSBiZ3Bpb19sb2NrIGRvZXMgcHJvdGVjdCB0aGUgcmVn
aXN0ZXJzIHVzZWQKPiA+IGJ5IHJlZ21hcC1tbWlvIGJ1dCB1bmxlc3MgdGhlIGludGVycnVwdCBj
b2RlIGlzIGFsc28gdXNpbmcgdGhlCj4gPiBzYW1lIHJlZ2lzdGVycyBpdCBpcyBmaW5lIHRvIGhh
dmUgYSBkaWZmZXJlbnQgbG9jayBmb3IgdGhvc2UuCj4gPgo+ID4gSXMgdGhlIGludGVycnVwdCBj
b2RlIHJlYWxseSBwb2tpbmcgaW50byB0aGUgdmVyeSBzYW1lIHJlZ2lzdGVycwo+ID4gYXMgcGFz
c2VkIHRvIGJncGlvX2luaXQoKT8KPiA+Cj4gPiBPZiBjb3Vyc2UgaXQgY291bGQgYmUgc2VlbiBh
cyBhIGJpdCBkaXJ0eSB0byBwb2tlIGFyb3VuZCBpbiB0aGUKPiA+IHNhbWUgbWVtb3J5IHNwYWNl
IHdpdGggcmVnbWFwIGFuZCB0aGUgYmdwaW9fKiBhY2Nlc3NvcnMKPiA+IGJ1dCBpbiBwcmFjdGlj
ZSBpdCdzIG5vIHByb2JsZW0gaWYgdGhleSBuZXZlciB0b3VjaCB0aGUgc2FtZQo+ID4gdGhpbmdz
Lgo+ID4KPiA+IFlvdXJzLAo+ID4gTGludXMgV2FsbGVpago+Cj4gSSdtIHdvbmRlcmluZyBpZiBp
dCB3b24ndCBjYXVzZSBhbnkgaW5jb25zaXN0ZW5jaWVzIHdoZW4gZm9yIGV4YW1wbGUKPiBpbnRl
cnJ1cHRzIGFyZSBiZWluZyB0cmlnZ2VyZWQgb24gaW5wdXQgbGluZXMgd2hpbGUgd2UncmUgYWxz
byByZWFkaW5nCj4gdGhlaXIgdmFsdWVzPyBTZWVtcyB0byBtZSBpdCdzIGp1c3QgbW9yZSBjbGVh
ciB0byB1c2UgYSBzaW5nbGUgbG9jawo+IGZvciBhIHJlZ2lzdGVyIHJhbmdlLiBNb3N0IGRyaXZl
cnMgdXNpbmcgZ3Bpby1tbWlvIGRvIGp1c3QgdGhhdCBpbgo+IHRoZWlyIGlycS1yZWxhdGVkIHJv
dXRpbmVzLgoKT0sgZ29vZCBwb2ludC4gSnVzdCBvbmUgbG9jayBmb3IgdGhlIHdob2xlIHRoaW5n
IGlzIGxpa2VseQptb3JlIG1haW50YWluYWJsZSBldmVuIGlmIGl0IHdvcmtzIHdpdGggdHdvIGRp
ZmZlcmVudCBsb2Nrcy4KCj4gQW55d2F5OiBldmVuIHdpdGhvdXQgdXNpbmcgYmdwaW9fbG9jayB0
aGlzIGNvZGUgaXMgaW5jb25zaXN0ZW50OiBpZgo+IHdlJ3JlIHVzaW5nIHJlZ21hcCBmb3IgaW50
ZXJydXB0IHJlZ2lzdGVycywgd2Ugc2hvdWxkIGVpdGhlciBkZWNpZGUgdG8KPiByZWx5IG9uIGxv
Y2tpbmcgcHJvdmlkZWQgYnkgcmVnbWFwIG9yIGRpc2FibGUgaXQgYW5kIHVzZSBhIGxvY2FsbHkK
PiBkZWZpbmVkIGxvY2suCgpPSyBtYWtlcyBzZW5zZSwgbGV0J3Mgc2F5IHdlIHVzZSB0aGUgYmdw
aW9fbG9jayBldmVyeXdoZXJlCmZvciB0aGlzLgoKWWFzaDogYXJlIHlvdSBPSyB3aXRoIHRoaXM/
IChIYXZlbid0IHJlYWQgdGhlIG5ldyBwYXRjaCBzZXQKeWV0LCBtYXliZSBpdCBpcyBhbHJlYWR5
IGZpeGVkLi4uKQoKPiBBbHNvOiBpZiB3ZSdyZSB1c2luZyByZWdtYXAsIHRoZW4gbGV0J3MgdXNl
IGl0Cj4gZXZlcnl3aGVyZSwgbm90IG9ubHkgd2hlbiBpdCdzIGNvbnZlbmllbnQgZm9yIHVwZGF0
aW5nIHJlZ2lzdGVycy4KCkkgdGhpbmsgd2hhdCB5b3UgYXJlIHNheWluZyBpcyB0aGF0IHdlIHNo
b3VsZCBleHRlbmQgZ3Bpby1tbWlvLmMKd2l0aCBzb21lIG9wdGlvbmFsIHJlZ21hcCBBUEkgKG9y
IGNyZWF0ZSBhIHNlcGFyYXRlIE1NSU8gbGlicmFyeQpmb3IgcmVnbWFwIGNvbnN1bWVycykgd2hp
Y2ggbWFrZXMgc2Vuc2UsIGJ1dCBpdCBmZWVscyBhIGJpdApoZWF2eSB0YXNrIHRvIHRvc3MgYXQg
Y29udHJpYnV0b3JzLgoKV2UgY291bGQgYWRkIGl0IHRvIHRoZSBUT0RPIGZpbGUsIHdoZXJlIEkg
YWxyZWFkeSBoYXZlIHNvbWUKaXRlbSBsaWtlIHRoaXMgZm9yIHBvcnQtbWFwcGVkIEkvTy4KCllv
dXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2Cg==
