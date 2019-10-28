Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA83E6CA2
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 08:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbPmZhZRusqpxbfkwOUmANw01KH52bYGaJdwuyIfUfM=; b=bwATjyCh3DktDX
	b/woItI0Td9a7XACxO1TqSBlRf1XMa1kwvoI9VSBW3Wr4DWX6alMM/k8mYO5uB4qXi/wq2hiXCvfr
	lyoUmYouWoNBR/spyes2kbXdC7Z+LcMjs1srJI7ouS66NKPCknyptjmMvnCNvBPf+yzXYWe16YAyk
	N4caqz43GWfn7eQqYYE3LR5PWmKORkBH/NsAoz4lL5K/pVDZmxXLC3jzs/ZJPv8CIQLDKkIiBXX3u
	elmhn2LfGMzox7gi1Pj5Lmz2BSp/+SRo/fjd9wqEe6p9gcU/gH0HMqMGsBwsKl/zoxpcmNdUKM6qf
	KWYWEehWEGIiS8TTsICA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOz2M-0008DX-8W; Mon, 28 Oct 2019 07:01:58 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOz2J-0008CL-PN
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 07:01:57 +0000
Received: by mail-qt1-x844.google.com with SMTP id c21so13119674qtj.12
 for <linux-riscv@lists.infradead.org>; Mon, 28 Oct 2019 00:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=B8JVLFtcc9aWg+tsverFb6TLrQIPxF39zUE7VKNDhoI=;
 b=hx7QfTuEid1Hcj9TC3rALkWx+Gku6XnXWmunhXazNO71XEThreP9UWB8Bbni20gYiM
 sEkQUdjWgoiI7PAdzADqeTbaJQyGZFXJVnSmWMm/RXJ6lqqiQKtAdjTPw7vkmG3j7LtP
 0XvfwbTK0m2QKX3LHUgqxDvmEK30kijN7fm2IYP5qloO/XJJW9dwQxAcm837u18moSd5
 Tosf26t4ivUB2P4ACk8BPI2ezXkAUGMwAr48Pc2+hqdGVVEk8XtGwUK+basUtTCTNqi4
 EQza5taJZUTXnWSASmu5uDmURdnonkMDQXIhakgP97IqoVztrIelaMPK+gWTwQLlt28g
 e7XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=B8JVLFtcc9aWg+tsverFb6TLrQIPxF39zUE7VKNDhoI=;
 b=Zn6P6TQdusorWDhQVMSZTNl1e3kYjdPXMHObzXuHN40Zn8o4drRhSHa2iStY5l8b3T
 Du9shYYmSUOtUaZAa/ZoX6/qDymAAOgUGRVsYhR1CU9IxjMh7uEmQnIH4O9VWy8WF8Fs
 VkwEazi0yArcszH7fWmBNXrTsX/hTXeTEdmqmUkPRPiNpY8Ur+cRGxL4JPSj0PPERTJu
 qFUrHAMs8jvS23VO/iPkE1Z/UO3TVvBVjDFTDz/dBQRVpWiI1qFi8OQP8xVL2gZ1EfFg
 E4KXhsMn509Sakjm8Ysvt/Z/i7/Yrcub2Yw/bCQ1bgB2P0Hk0pPZrA/k/Ktrm4JxYaFq
 B6aQ==
X-Gm-Message-State: APjAAAUswl5gOzXhzLT2r9dYLreAVMNLHyVmnfn1zXfMT5SB2lkmzIwl
 uorYwnlqPGbRICar8DNYIh8OVKuO67tgVIY++zc=
X-Google-Smtp-Source: APXvYqx2RYAkGHTJdZoVZBWsqyraT9MFsCxp3j+m5VBkKsDI1NziE3k2TjQbNslMx3rA0R2JsmQoQxMDbxfR3cIGwkA=
X-Received: by 2002:ac8:542:: with SMTP id c2mr16290854qth.338.1572246110227; 
 Mon, 28 Oct 2019 00:01:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191028024101.26655-1-nickhu@andestech.com>
In-Reply-To: <20191028024101.26655-1-nickhu@andestech.com>
From: Greentime Hu <green.hu@gmail.com>
Date: Mon, 28 Oct 2019 15:01:14 +0800
Message-ID: <CAEbi=3cs1h4pOU9TcP3JCp921Jj4qYiGtqWCkJ2VKby0YFbbXg@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] KASAN support for RISC-V
To: Nick Hu <nickhu@andestech.com>, Greentime Hu <greentime.hu@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_000155_849411_C3054EDE 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (green.hu[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, alankao@andestech.com, corbet@lwn.net,
 gregkh@linuxfoundation.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-doc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, atish.patra@wdc.com,
 Anup.Patel@wdc.com, Alexander Potapenko <glider@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, aryabinin@virtuozzo.com,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

TmljayBIdSA8bmlja2h1QGFuZGVzdGVjaC5jb20+IOaWvCAyMDE55bm0MTDmnIgyOOaXpSDpgLHk
uIAg5LiK5Y2IMTA6NDHlr6vpgZPvvJoKPgo+IEtBU0FOIGlzIGFuIGltcG9ydGFudCBydW50aW1l
IG1lbW9yeSBkZWJ1Z2dpbmcgZmVhdHVyZSBpbiBsaW51eCBrZXJuZWwgd2hpY2ggY2FuCj4gZGV0
ZWN0IHVzZS1hZnRlci1mcmVlIGFuZCBvdXQtb2YtYm91bmRzIHByb2JsZW1zLgo+Cj4gQ2hhbmdl
cyBpbiB2MjoKPiAgIC0gUmVtb3ZlIHRoZSBwb3J0aW5nIG9mIG1lbW1vdmUgYW5kIGV4Y2x1ZGUg
dGhlIGNoZWNrIGluc3RlYWQuCj4gICAtIEZpeCBzb21lIGNvZGUgbm90ZWQgYnkgQ2hyaXN0b3Bo
IEhlbGx3aWcKPgo+IENoYW5nZXMgaW4gdjM6Cj4gICAtIFVwZGF0ZSB0aGUgS0FTQU4gZG9jdW1l
bnRhdGlvbiB0byBtZW50aW9uIHRoYXQgcmlzY3YgaXMgc3VwcG9ydGVkLgo+Cj4gQ2hhbmdlcyBp
biB2NDoKPiAgIC0gQ29ycmVjdCB0aGUgY29tbWl0IGxvZwo+ICAgLSBGaXggdGhlIGJ1ZyByZXBv
cnRlZCBieSBHcmVlbnRpbWUgSHUKPgo+IE5pY2sgSHUgKDMpOgo+ICAga2FzYW46IE5vIEtBU0FO
J3MgbWVtbW92ZSBjaGVjayBpZiBhcmNocyBkb24ndCBoYXZlIGl0Lgo+ICAgcmlzY3Y6IEFkZCBL
QVNBTiBzdXBwb3J0Cj4gICBrYXNhbjogQWRkIHJpc2N2IHRvIEtBU0FOIGRvY3VtZW50YXRpb24u
Cj4KPiAgRG9jdW1lbnRhdGlvbi9kZXYtdG9vbHMva2FzYW4ucnN0ICAgfCAgIDQgKy0KPiAgYXJj
aC9yaXNjdi9LY29uZmlnICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBhcmNoL3Jpc2N2L2lu
Y2x1ZGUvYXNtL2thc2FuLmggICAgICB8ICAyNyArKysrKysrKwo+ICBhcmNoL3Jpc2N2L2luY2x1
ZGUvYXNtL3BndGFibGUtNjQuaCB8ICAgNSArKwo+ICBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3N0
cmluZy5oICAgICB8ICAgOSArKysKPiAgYXJjaC9yaXNjdi9rZXJuZWwvaGVhZC5TICAgICAgICAg
ICAgfCAgIDMgKwo+ICBhcmNoL3Jpc2N2L2tlcm5lbC9yaXNjdl9rc3ltcy5jICAgICB8ICAgMiAr
Cj4gIGFyY2gvcmlzY3Yva2VybmVsL3NldHVwLmMgICAgICAgICAgIHwgICA1ICsrCj4gIGFyY2gv
cmlzY3Yva2VybmVsL3ZtbGludXgubGRzLlMgICAgIHwgICAxICsKPiAgYXJjaC9yaXNjdi9saWIv
bWVtY3B5LlMgICAgICAgICAgICAgfCAgIDUgKy0KPiAgYXJjaC9yaXNjdi9saWIvbWVtc2V0LlMg
ICAgICAgICAgICAgfCAgIDUgKy0KPiAgYXJjaC9yaXNjdi9tbS9NYWtlZmlsZSAgICAgICAgICAg
ICAgfCAgIDYgKysKPiAgYXJjaC9yaXNjdi9tbS9rYXNhbl9pbml0LmMgICAgICAgICAgfCAxMDQg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBtbS9rYXNhbi9jb21tb24uYyAgICAgICAg
ICAgICAgICAgICB8ICAgMiArCj4gIDE0IGZpbGVzIGNoYW5nZWQsIDE3MyBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9yaXNjdi9pbmNsdWRl
L2FzbS9rYXNhbi5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL3Jpc2N2L21tL2thc2FuX2lu
aXQuYwo+CkhpIE5pY2ssCgpJIGhhdmUgdGVzdGVkIEtBU0FOIGZlYXR1cmUgd2l0aCB0ZXN0X2th
c2FuLmtvIGJhc2VkIG9uIGNvbW1pdApjZDllNzJiODAwOTBhOGNkN2Q4NGE0N2EzMGEwNmZhOTJm
ZjI3N2QxICh0YWc6IHJpc2N2L2Zvci12NS40LXJjMykgYW5kCml0IHBhc3NlZCBpbiBRZW11IGFu
ZCBVbmxlYXNoZWQgYm9hcmQuClRoYW5rIHlvdSBmb3IgZml4aW5nIHRoZSBidWcuIDopCgpUZXN0
ZWQtYnk6IEdyZWVudGltZSBIdSA8Z3JlZW50aW1lLmh1QHNpZml2ZS5jb20+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5n
IGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
