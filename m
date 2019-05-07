Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E988715DB6
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 08:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9pdO8GIKCJpcV+YeHDq0iLroxhusreaN/R01bI5ChE=; b=qDmdHSSnWtMMKX
	Kk+Jf0Tbky9/Qaje3tmIvfhnhe8jU2lrOvGis9brRsh2/yzh6VWS+rs84E2Gtj8z6U/paMdvXN/WG
	B8eKrhzE5HX3kOqGVM4G+wAW3VWfzk66GRQCcHo7G9LOg5IP8YYD1RwvPimtcSlrIF0xl0YF6Lv0Q
	wfCKlyLktWJQq8jMGomjr1gW+x7OrI14zLoeI/HSdoqxkHWd2IiNhxccvbN48yaBk3fYNttJMTVHy
	9Xg/0nHMVhdFww79vs57YWY3m2PdC0XPveX5ULvfkQ0UvuaD6FLbbNDpnzrrY25XoZjPb2cTD5ZvN
	G6lnhSvlD72QZNku+Z+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtvI-0000D5-OL; Tue, 07 May 2019 06:49:56 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtv9-000067-7Z; Tue, 07 May 2019 06:49:48 +0000
Received: by mail-qk1-x741.google.com with SMTP id a132so9403631qkb.13;
 Mon, 06 May 2019 23:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pa7Box1aR7yFtR1LX1WDnV3kRpU7SqZCsbjs49Q3I5I=;
 b=MbpgTNQuafLtAS2Dly735CRfwi2rTUQf2u2v4oGvQgQgSYIdnRpg7VCLomPpMzIscG
 QaTnC9SQ9ku6gzFOzq1s9XrRaJmYor/1LFKrkhizBLNXIXufH7ZYafVfUTi/hxmPPuHk
 B/SkK/YRJGmYzfaQ1xghtxinwaerdxpRKizUfkuezccasVKNLUKgHxlEEtCQzs7jj3xl
 zQkJPXfNNvA3TqInSISCOxmMnYUjkdAFYUZlvI0ouvwsL+dfg4OFY2WIgIiVzRvRisWc
 5DS8N2wLUkGet8qbU+i0bfGDKHxX5peC2gXK9w9E6zQg9z2uNJlAWgMxSlSz/L/CQjSl
 IVaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pa7Box1aR7yFtR1LX1WDnV3kRpU7SqZCsbjs49Q3I5I=;
 b=PFDDeU4SySbtR8ZhtiFmqczvQU6nBgMB5TptDIV47aOdWPdDphsQNkLS6e4SAHKPdb
 LZvXXDw5P87xaZ8JgCKSL0w1slgNh/J65UrvyJNCg0/z2MLCrgQWUfly/kVShXeWpEgM
 5oNHtt9Ddb/KB86rslJQHqfzp5bcXk2kBLJIq9XMjDu43W4tvAlrzToQf87jOViDCCDT
 PJ1W9X456IYOv1KNVrxoVjdWFN2NOOtd9/yQ8FzHssDkq/d620024eFI/BzIH5pFzg53
 lpPHTz3fetaCuFTGmiZWePoprZ3S82BsQdA0tiMmnaKbWaTVPGMapLIr4AjodleP1q7/
 KP3A==
X-Gm-Message-State: APjAAAVwRkw+r8MLT/jh54OXkiyPhlMjaWa/myAAc3wk0bbT0Kw3c42u
 1d/J0+Qy4agthxr5Z64RHmMXIcS8rwYJVY187ws=
X-Google-Smtp-Source: APXvYqzuoQEtPiGnZXwYeWTvh/tWnA2kNb3EmE2Gn3p8SIpj/ShNUcDydJeqXgxDTOHN1axGtXmE2eyXjqUTKs09l0U=
X-Received: by 2002:a05:620a:1012:: with SMTP id
 z18mr1671111qkj.205.1557211784520; 
 Mon, 06 May 2019 23:49:44 -0700 (PDT)
MIME-Version: 1.0
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-10-git-send-email-rppt@linux.ibm.com>
In-Reply-To: <1556810922-20248-10-git-send-email-rppt@linux.ibm.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Tue, 7 May 2019 14:49:08 +0800
Message-ID: <CAEbi=3d=HN0NagdZRu7qYE1KCWGnnGGwyhWKPp31XbzT7JunBQ@mail.gmail.com>
Subject: Re: [PATCH 09/15] nds32: switch to generic version of pte allocation
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_234947_294541_73BFFFAA 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linux-hexagon@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-arch <linux-arch@vger.kernel.org>, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Richard Kuo <rkuo@codeaurora.org>, Paul Burton <paul.burton@mips.com>,
 linux-alpha@vger.kernel.org, Ley Foon Tan <lftan@altera.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgTWlrZSwKCk1pa2UgUmFwb3BvcnQgPHJwcHRAbGludXguaWJtLmNvbT4g5pa8IDIwMTnlubQ1
5pyIMuaXpSDpgLHlm5sg5LiL5Y2IMTE6MzDlr6vpgZPvvJoKPgo+IFRoZSBuZHMzMiBpbXBsZW1l
bnRhdGlvbiBvZiBwdGVfYWxsb2Nfb25lX2tlcm5lbCgpIGRpZmZlcnMgZnJvbSB0aGUgZ2VuZXJp
Ywo+IGluIHRoZSB1c2Ugb2YgX19HRlBfUkVUUllfTUFZRkFJTCBmbGFnLCB3aGljaCBpcyByZW1v
dmVkIGFmdGVyIHRoZQo+IGNvbnZlcnNpb24uCj4KPiBUaGUgbmRzMzIgdmVyc2lvbiBvZiBwdGVf
YWxsb2Nfb25lKCkgbWlzc2VkIHRoZSBjYWxsIHRvIHBndGFibGVfcGFnZV9jdG9yKCkKPiBhbmQg
YWxzbyB1c2VkIF9fR0ZQX1JFVFJZX01BWUZBSUwuIFN3aXRjaGluZyBpdCB0byB1c2UgZ2VuZXJp
Ywo+IF9fcHRlX2FsbG9jX29uZSgpIGZvciB0aGUgUFRFIHBhZ2UgYWxsb2NhdGlvbiBlbnN1cmVz
IHRoYXQgcGFnZSB0YWJsZQo+IGNvbnN0cnVjdG9yIGlzIHJ1biBhbmQgdGhlIHVzZXIgcGFnZSB0
YWJsZXMgYXJlIGFsbG9jYXRlZCB3aXRoCj4gX19HRlBfQUNDT1VOVC4KPgo+IFRoZSBjb252ZXJz
aW9uIHRvIHRoZSBnZW5lcmljIHZlcnNpb24gb2YgcHRlX2ZyZWVfa2VybmVsKCkgcmVtb3ZlcyB0
aGUgTlVMTAo+IGNoZWNrIGZvciBwdGUuCj4KPiBUaGUgcHRlX2ZyZWUoKSB2ZXJzaW9uIG9uIG5k
czMyIGlzIGlkZW50aWNhbCB0byB0aGUgZ2VuZXJpYyBvbmUgYW5kIGNhbiBiZQo+IHNpbXBseSBk
cm9wcGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWlrZSBSYXBvcG9ydCA8cnBwdEBsaW51eC5pYm0u
Y29tPgo+IC0tLQo+ICBhcmNoL25kczMyL2luY2x1ZGUvYXNtL3BnYWxsb2MuaCB8IDMxICsrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgMjcgZGVsZXRpb25zKC0pCgpUaGFua3MgZm9yIHlvdXIgcGF0Y2guCkknbSBhc3N1bWlu
ZyB0aGlzIGlzIGdvaW5nIGluIGFsb25nIHdpdGggdGhlIHJlc3Qgb2YgdGhlIHBhdGNoZXMsIHNv
IEknbSBub3QKZ29pbmcgdG8gYWRkIGl0IHRvIG15IHRyZWUuCgpBY2tlZC1ieTogR3JlZW50aW1l
IEh1IDxncmVlbnRpbWVAYW5kZXN0ZWNoLmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNj
dkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcmlzY3YK
