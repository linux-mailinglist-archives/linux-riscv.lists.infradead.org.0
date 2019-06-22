Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412DF4F3D2
	for <lists+linux-riscv@lfdr.de>; Sat, 22 Jun 2019 07:14:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aME8q346r7rCSFd0i//vhVAf13b9zC/wnTPzLLMZ3R4=; b=LGi17MXHjfBOrx
	uRMzFse2JVpVRtw6RxV6aN/VTlnh6+8PLhUDCFS72qJinyXdVM+tXK0K1d6TNwgXYVtC/Phu8Qh/E
	lEoEySgk1rCTQ0gl44ddUETqGgiMQD+sWQDmHn3IMww2HJjN5TGu9G7J3Lchoh3iBMDb/JmEP5Yh/
	NN4Iq/sfLRi/Tz45+c0Qoi3lt6MkYxC/PL91uEXLmA/REDIGWjhAtbe/3ZkwhwTyvr2cEGa9JPSbE
	Lj4K5CecMha8A4AqHii46hemubfuNHOPV4zixnSEeQuNzVVy3SDWZuK98q5ckrVU7QVTdXZUQaD7U
	5gCB71Jez1hUWvfmekxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heYLd-0004mH-BT; Sat, 22 Jun 2019 05:13:57 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heYLZ-0004ll-D7
 for linux-riscv@lists.infradead.org; Sat, 22 Jun 2019 05:13:55 +0000
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
 [209.85.221.171]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id x5M5DDw1001317
 for <linux-riscv@lists.infradead.org>; Sat, 22 Jun 2019 14:13:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com x5M5DDw1001317
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561180394;
 bh=KdIj9gfPTr+KrZ1sDxUOA4m0IeC48LHZH0YQxYceD7E=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vNXZk1hsI4XAgvzZbNpj3eEkuhbxR+xJUJgEQAfDLHUrThJBuGHZnQCO5vbNRFhY9
 O6JJNTD2AoilsIhPpmAPLB1s4tU2y4wbYNdFvz73Ofj6mHBYw5ZRKRChdKtWhGqZDi
 iBqeIGPFn9ldiGUmjSY9CUglghoeCgD3qPumjrBDSZNEKfDG9ZU7ueOhebEc+fo969
 TgZY6+nM4I2xd4ajLhqTRGukFPJdLyN8D1rO1s1h9MYefCsRGBHweTxXGMXf846gEd
 yNByTY3dWBt06CrMLnC6+MAxZ8qT1YpkX/lPVr2HSHKo/3ucD9voLty7ne2cwWjDPH
 Jx7qcb82+RPrQ==
X-Nifty-SrcIP: [209.85.221.171]
Received: by mail-vk1-f171.google.com with SMTP id s16so1742956vke.7
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 22:13:14 -0700 (PDT)
X-Gm-Message-State: APjAAAUy82AqGb8eTN+ltkFU49V9UzY19DNd+1LeYeU31QJ6Sh2KeXRS
 eguGNO9kGQwtIq78SGD1K4RpgmCtRc+FPl4IRL0=
X-Google-Smtp-Source: APXvYqzPInWk1IBu1alc9KP2LKnKvdXwjA7lll6wtO8cUk3YyTmS0WJGwLrcgnJ/Z+EOnHvGr4hhymNP3eUnWblqKus=
X-Received: by 2002:a1f:aad2:: with SMTP id t201mr11091589vke.74.1561180393149; 
 Fri, 21 Jun 2019 22:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190604101409.2078-1-yamada.masahiro@socionext.com>
 <20190604101409.2078-16-yamada.masahiro@socionext.com>
 <CAK8P3a08f25WYP5r57JHPcZWieS2+07=_qTphLosS4M2w8F0Zw@mail.gmail.com>
In-Reply-To: <CAK8P3a08f25WYP5r57JHPcZWieS2+07=_qTphLosS4M2w8F0Zw@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 22 Jun 2019 14:12:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNATt8BSrMfrOVjZ_SbA0awsh4CvRhu6TF3gYYynirpviWw@mail.gmail.com>
Message-ID: <CAK7LNATt8BSrMfrOVjZ_SbA0awsh4CvRhu6TF3gYYynirpviWw@mail.gmail.com>
Subject: Re: [PATCH 15/15] kbuild: compile test UAPI headers to ensure they
 are self-contained
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_221353_691229_2EAE0A30 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Song Liu <songliubraving@fb.com>, Michal Marek <michal.lkml@markovi.net>,
 bpf@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Jani Nikula <jani.nikula@intel.com>, Networking <netdev@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, Yonghong Song <yhs@fb.com>,
 linux-riscv@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2F0LCBKdW4gMjIsIDIwMTkgYXQgNDowNSBBTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPgo+IE9uIFR1ZSwgSnVuIDQsIDIwMTkgYXQgMTI6MTYgUE0gTWFzYWhpcm8g
WWFtYWRhCj4gPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25leHQuY29tPiB3cm90ZToKPgo+ID4gLS0t
IGEvTWFrZWZpbGUKPiA+ICsrKyBiL01ha2VmaWxlCj4gPiBAQCAtMTM2Myw3ICsxMzYzLDcgQEAg
Q0xFQU5fRElSUyAgKz0gJChNT0RWRVJESVIpIGluY2x1ZGUva3N5bQo+ID4gIENMRUFOX0ZJTEVT
ICs9IG1vZHVsZXMuYnVpbHRpbi5tb2RpbmZvCj4gPgo+ID4gICMgRGlyZWN0b3JpZXMgJiBmaWxl
cyByZW1vdmVkIHdpdGggJ21ha2UgbXJwcm9wZXInCj4gPiAtTVJQUk9QRVJfRElSUyAgKz0gaW5j
bHVkZS9jb25maWcgdXNyL2luY2x1ZGUgaW5jbHVkZS9nZW5lcmF0ZWQgICAgICAgICAgXAo+ID4g
K01SUFJPUEVSX0RJUlMgICs9IGluY2x1ZGUvY29uZmlnIGluY2x1ZGUvZ2VuZXJhdGVkICAgICAg
ICAgIFwKPiA+ICAgICAgICAgICAgICAgICAgIGFyY2gvJChTUkNBUkNIKS9pbmNsdWRlL2dlbmVy
YXRlZCAudG1wX29iamRpZmYKPiA+ICBNUlBST1BFUl9GSUxFUyArPSAuY29uZmlnIC5jb25maWcu
b2xkIC52ZXJzaW9uIFwKPiA+ICAgICAgICAgICAgICAgICAgIE1vZHVsZS5zeW12ZXJzIHRhZ3Mg
VEFHUyBjc2NvcGUqIEdQQVRIIEdUQUdTIEdSVEFHUyBHU1lNUyBcCj4KPiBUaGlzIGNoYW5nZSBz
ZWVtcyB0byBoYXZlIGNhdXNlZCBhIG1pbm9yIHJlZ3Jlc3Npb246Cj4KPiAkIG1ha2UgY2xlYW4g
OyBtYWtlIGNsZWFuCj4gZmluZDog4oCYKuKAmTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQoK
SG1tLCBJIGNhbm5vdCByZXByb2R1Y2UgdGhpcy4KCkkgY2hlY2tlZCB0aGUgbGF0ZXN0IGxpbnV4
LW5leHQuCgoKbWFzYWhpcm9AZ3JvdmVyOn4vcmVmL2xpbnV4LW5leHQkIGdpdCBkZXNjcmliZQpu
ZXh0LTIwMTkwNjIxCm1hc2FoaXJvQGdyb3Zlcjp+L3JlZi9saW51eC1uZXh0JCBtYWtlIGNsZWFu
OyBtYWtlIGNsZWFuCm1hc2FoaXJvQGdyb3Zlcjp+L3JlZi9saW51eC1uZXh0JAoKCgoKCj4gQW55
IGlkZWE/Cj4KPiAgICAgICBBcm5kCgoKCi0tIApCZXN0IFJlZ2FyZHMKTWFzYWhpcm8gWWFtYWRh
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1y
aXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
