Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F018120B0
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 18:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ok34H3rxFr8VP9+smfxdfg2u4k9Jl3vo+T51eAOR39o=; b=AdFsrhCUAJV3XT0+wKjm633jF
	8YM163T9iG3ea6yarFryU7qlTpj4KbdfeEcxARmWk8fr68wSiUFOepPogiXoD000Ps+fMMFhUmxl/
	BUXVRJFNmDc/zDRWdeXmycQHloKVTH3hKOA4rxn2vDvwGU4BzRF6u1KjlCLDiRB6TTMXBzi39TGQz
	KGE7v3/pbr0jwJtpvl60DFmdKc7Y1auFy3o0Txg4SVo5TPs3zdt9fEy5uw75wvA6NTrcWYnie6QSD
	pUYp4qhRAe6S/kAfK1wN3nkdp32aiHI7qGWGLE+HYkxWnrQ/r//8PerltFyvgOiOy6fiXIe6mqzSR
	+yuy5mv8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMF0V-00060j-4g; Thu, 02 May 2019 16:56:27 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMF0G-0005sl-L5; Thu, 02 May 2019 16:56:19 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44w1cS5Fwsz9v0Sx;
 Thu,  2 May 2019 18:56:08 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=b8I7W1X+; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 4wFI9OSqYAkB; Thu,  2 May 2019 18:56:08 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44w1cS3z29z9v0Sy;
 Thu,  2 May 2019 18:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556816168; bh=Q15LZ3d9bdq9dEoD9BccUn9mlT4iR41PhF1gwPGTDdo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=b8I7W1X+eD9E6f4QICHVyiGb2O+HBaJpc4Gwg6pUFtlpNKygpjn8VED8m8xg+JkOB
 IY+qSAZGLB4WFz+ZuAhNE6IOZlIPudaswik9x6vnbwMIKU3+fxYh/fSD0okZc5lnaA
 cdvwJC11zLQtHCiz8Kggoo4ZlThkHqB1Sg9CxUag=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3A25B8B8FE;
 Thu,  2 May 2019 18:56:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id RamEpSyy5iYB; Thu,  2 May 2019 18:56:10 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id CE4878B899;
 Thu,  2 May 2019 18:56:08 +0200 (CEST)
Subject: Re: [PATCH 12/15] powerpc/nohash/64: switch to generic version of pte
 allocation
To: Mike Rapoport <rppt@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-13-git-send-email-rppt@linux.ibm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <adcb6ae6-48d9-5ba9-2732-a0ab1d96667c@c-s.fr>
Date: Thu, 2 May 2019 18:56:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1556810922-20248-13-git-send-email-rppt@linux.ibm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_095618_108248_8137A965 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-riscv@lists.infradead.org,
 linux-arch@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-alpha@vger.kernel.org, linux-um@lists.infradead.org,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 Ley Foon Tan <lftan@altera.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-hexagon@vger.kernel.org,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

CgpMZSAwMi8wNS8yMDE5IMOgIDE3OjI4LCBNaWtlIFJhcG9wb3J0IGEgw6ljcml0wqA6Cj4gVGhl
IDY0LWJpdCBib29rLUUgcG93ZXJwYyBpbXBsZW1lbnRzIHB0ZV9hbGxvY19vbmUoKSwKPiBwdGVf
YWxsb2Nfb25lX2tlcm5lbCgpLCBwdGVfZnJlZV9rZXJuZWwoKSBhbmQgcHRlX2ZyZWUoKSB0aGUg
c2FtZSB3YXkgYXMKPiB0aGUgZ2VuZXJpYyB2ZXJzaW9uLgoKV2lsbCBzb29uIGJlIGNvbnZlcnRl
ZCB0byB0aGUgc2FtZSBhcyB0aGUgMyBvdGhlciBQUEMgc3ViYXJjaGVzLCBzZWUKaHR0cHM6Ly9w
YXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMDkxNTkwLwoKQ2hyaXN0b3BoZQoKPiAKPiBTd2l0
Y2ggaXQgdG8gdGhlIGdlbmVyaWMgdmVyc2lvbiB0aGF0IGRvZXMgZXhhY3RseSB0aGUgc2FtZSB0
aGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5j
b20+Cj4gLS0tCj4gICBhcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vbm9oYXNoLzY0L3BnYWxsb2Mu
aCB8IDM1ICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDMzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL3Bv
d2VycGMvaW5jbHVkZS9hc20vbm9oYXNoLzY0L3BnYWxsb2MuaCBiL2FyY2gvcG93ZXJwYy9pbmNs
dWRlL2FzbS9ub2hhc2gvNjQvcGdhbGxvYy5oCj4gaW5kZXggNjZkMDg2Zi4uYmZiNTNhMCAxMDA2
NDQKPiAtLS0gYS9hcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vbm9oYXNoLzY0L3BnYWxsb2MuaAo+
ICsrKyBiL2FyY2gvcG93ZXJwYy9pbmNsdWRlL2FzbS9ub2hhc2gvNjQvcGdhbGxvYy5oCj4gQEAg
LTExLDYgKzExLDggQEAKPiAgICNpbmNsdWRlIDxsaW51eC9jcHVtYXNrLmg+Cj4gICAjaW5jbHVk
ZSA8bGludXgvcGVyY3B1Lmg+Cj4gICAKPiArI2luY2x1ZGUgPGFzbS1nZW5lcmljL3BnYWxsb2Mu
aD4JLyogZm9yIHB0ZV97YWxsb2MsZnJlZX1fb25lICovCj4gKwo+ICAgc3RydWN0IHZtZW1tYXBf
YmFja2luZyB7Cj4gICAJc3RydWN0IHZtZW1tYXBfYmFja2luZyAqbGlzdDsKPiAgIAl1bnNpZ25l
ZCBsb25nIHBoeXM7Cj4gQEAgLTkyLDM5ICs5NCw2IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBwbWRf
ZnJlZShzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcG1kX3QgKnBtZCkKPiAgIAlrbWVtX2NhY2hlX2Zy
ZWUoUEdUX0NBQ0hFKFBNRF9DQUNIRV9JTkRFWCksIHBtZCk7Cj4gICB9Cj4gICAKPiAtCj4gLXN0
YXRpYyBpbmxpbmUgcHRlX3QgKnB0ZV9hbGxvY19vbmVfa2VybmVsKHN0cnVjdCBtbV9zdHJ1Y3Qg
Km1tKQo+IC17Cj4gLQlyZXR1cm4gKHB0ZV90ICopX19nZXRfZnJlZV9wYWdlKEdGUF9LRVJORUwg
fCBfX0dGUF9aRVJPKTsKPiAtfQo+IC0KPiAtc3RhdGljIGlubGluZSBwZ3RhYmxlX3QgcHRlX2Fs
bG9jX29uZShzdHJ1Y3QgbW1fc3RydWN0ICptbSkKPiAtewo+IC0Jc3RydWN0IHBhZ2UgKnBhZ2U7
Cj4gLQlwdGVfdCAqcHRlOwo+IC0KPiAtCXB0ZSA9IChwdGVfdCAqKV9fZ2V0X2ZyZWVfcGFnZShH
RlBfS0VSTkVMIHwgX19HRlBfWkVSTyB8IF9fR0ZQX0FDQ09VTlQpOwo+IC0JaWYgKCFwdGUpCj4g
LQkJcmV0dXJuIE5VTEw7Cj4gLQlwYWdlID0gdmlydF90b19wYWdlKHB0ZSk7Cj4gLQlpZiAoIXBn
dGFibGVfcGFnZV9jdG9yKHBhZ2UpKSB7Cj4gLQkJX19mcmVlX3BhZ2UocGFnZSk7Cj4gLQkJcmV0
dXJuIE5VTEw7Cj4gLQl9Cj4gLQlyZXR1cm4gcGFnZTsKPiAtfQo+IC0KPiAtc3RhdGljIGlubGlu
ZSB2b2lkIHB0ZV9mcmVlX2tlcm5lbChzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcHRlX3QgKnB0ZSkK
PiAtewo+IC0JZnJlZV9wYWdlKCh1bnNpZ25lZCBsb25nKXB0ZSk7Cj4gLX0KPiAtCj4gLXN0YXRp
YyBpbmxpbmUgdm9pZCBwdGVfZnJlZShzdHJ1Y3QgbW1fc3RydWN0ICptbSwgcGd0YWJsZV90IHB0
ZXBhZ2UpCj4gLXsKPiAtCXBndGFibGVfcGFnZV9kdG9yKHB0ZXBhZ2UpOwo+IC0JX19mcmVlX3Bh
Z2UocHRlcGFnZSk7Cj4gLX0KPiAtCj4gICBzdGF0aWMgaW5saW5lIHZvaWQgcGd0YWJsZV9mcmVl
KHZvaWQgKnRhYmxlLCBpbnQgc2hpZnQpCj4gICB7Cj4gICAJaWYgKCFzaGlmdCkgewo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3Yg
bWFpbGluZyBsaXN0CmxpbnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
