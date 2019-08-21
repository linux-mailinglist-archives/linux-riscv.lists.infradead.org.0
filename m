Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3947981D6
	for <lists+linux-riscv@lfdr.de>; Wed, 21 Aug 2019 19:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVaPI2jehtlSAfkzGQOieCA7a4FxtInq2BxaeCp5Rag=; b=X602oU0unj1DCn
	LWFIvJHV0ulrqMPCHMc0M9xIAaVcUkDZCi0On/Z5/qkdiMd8/inZyrDCt/wFwZquqYKRvD1vHSEl8
	MvVK1/cHa7r3kHk8VBVnw/5XLAOf+92KmMXMabpJIfdGpyqO4JGvGqc3x1yU8KZaRhb8HY9VqMZS6
	NpDwMDyiLydpiWwADSLbEgLuDFT06BXrL9RPmsUI7gwS3iT2Qhf3XyXQM3UW7Yc2pVEPDUJdtsIcc
	uag/SkVi5BPRvCeQicltInywMaB42kjiEbAsrRd2LOYMkcxygR/sVar8450YuhY64OY1PGz8QplOw
	SJ2Z7C9QPb15GW0TMj2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Uox-0004Hp-VT; Wed, 21 Aug 2019 17:54:55 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Uop-00049u-Co
 for linux-riscv@lists.infradead.org; Wed, 21 Aug 2019 17:54:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so1726389pgb.10
 for <linux-riscv@lists.infradead.org>; Wed, 21 Aug 2019 10:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=GFAV8pilcC1llj60Idd3qdxSrJ9XJ4F1Bsi8o/Z7L3Y=;
 b=MibkJfl7NKH/Ky1f2m047yCyVn5HDj4h6BknsBFQMSfENX5y0PQ1W2NTQ79Rop+fDk
 gnrHmhmIEMZizhSk2NF/hIQ/HpvS/o5x2Nbx/X1esXKSnNTeFbO+j+uJtqljh4W5syWV
 zYCuAvwFSC1KrO2UM9p5N40NAGb1ptPkpwdf5lhOhSbkXDgnaxDdfrz3VGEb6cS+CUgM
 gX40QJmY1GD41LsOkBft2oDXHTnDcW8yl4srOLdUWZytc4t1Se/aA0FieLoQ25xCJ+1S
 afVz7Gsmink0LcorkG1DT2UEyiSP7dzs6QYHk0RM36cmpaXaCUd5adGSbzNoby5UChKH
 jcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=GFAV8pilcC1llj60Idd3qdxSrJ9XJ4F1Bsi8o/Z7L3Y=;
 b=CUKESJLgVtQRM4m8Q/xAPstCYM3FfeBeU51GGSORPUfs1Om/FlhySJd2s/Z64QX0Hl
 YXkEoFtn2AJoQ1nnHLG2rUoxMsnM4YOKrW6KW+xExgBA8MuBa5O85/fbXqVmH6gonPcu
 gkl4BS3+oaPEcfDb4PiZLbmQN4HZfN3OgafxldWCdZYmGju6DxxZMw1YFshr7oStPWUj
 Hv0wqjqIs48WzIQfyzmRPRwLFKw1U486AwjBUb27AT8uO4nigtGyEPf+0m9bjFbFG3Pe
 y0co7bRB4NJH/mkCeAS+yhenCdAFxWUF8QkzCqjK6Ca5JxQ22SXISlZvYCPjoYQlrEWM
 3zLw==
X-Gm-Message-State: APjAAAUUnLpF5Bo3S6vZb56VGIr6ptnSrves7DytqaqFoNLZz6MmgY5N
 niBR2VarNvS0sPx3W9P5ADipVA==
X-Google-Smtp-Source: APXvYqzvv2yyxmIZr/MR3cUYyWoZfEcDhy3LLFAqmSRfCTCiHwpo72LGfKqsh5kqmA7eStyCHOlaoQ==
X-Received: by 2002:aa7:9d07:: with SMTP id k7mr36355208pfp.94.1566410086221; 
 Wed, 21 Aug 2019 10:54:46 -0700 (PDT)
Received: from [10.17.0.244] ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id e26sm26762008pfd.14.2019.08.21.10.54.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 10:54:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH 15/15] riscv: disable the EFI PECOFF header for M-mode
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <4f1677e24a5fcdfd2fda714cdd66f4dbe7817284.camel@wdc.com>
Date: Wed, 21 Aug 2019 10:54:44 -0700
Message-Id: <F4C28F0F-7385-432E-A766-64A3F8B8C381@sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-16-hch@lst.de>
 <3BF39A0F-558D-40E0-880D-27829486F9F0@sifive.com>
 <4f1677e24a5fcdfd2fda714cdd66f4dbe7817284.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_105447_475925_86BD3497 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "palmer@sifive.com" <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyAyMSwgMjAxOSwgYXQgMTA6MzEgQU0sIEF0aXNoIFBhdHJhIDxBdGlzaC5QYXRy
YUB3ZGMuY29tPiB3cm90ZToKPiAKPiBPbiBUdWUsIDIwMTktMDgtMjAgYXQgMjE6MTQgLTA3MDAs
IFRyb3kgQmVuamVnZXJkZXMgd3JvdGU6Cj4+PiBPbiBBdWcgMTMsIDIwMTksIGF0IDg6NDcgQU0s
IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToKPj4+IAo+Pj4gTm8gcG9pbnQg
aW4gYmxvYXRpbmcgdGhlIGtlcm5lbCBpbWFnZSB3aXRoIGEgYm9vdGxvYWRlciBoZWFkZXIgaWYK
Pj4+IHdlIHJ1biBiYXJlIG1ldGFsLgo+PiAKPj4gSSB3b3VsZCBzYXkgdGhlIHNhbWUgZm9yIFMt
bW9kZS4gRUZJIGJvb3Rpbmcgc2hvdWxkIGJlIGFuIG9wdGlvbiwgbm90Cj4+IGEgcmVxdWlyZW1l
bnQuIAo+IAo+IEVGSSBib290aW5nIGlzIG5ldmVyIGEgcmVxdWlyZW1lbnQgb24gYW55IGJvYXJk
LiBXaGVuIEVGSSBzdHViIHdpbGwgYmUKPiBhZGRlZCBmb3Iga2VybmVsLCBpdCB3aWxsIGJlIGVu
YWJsZWQgd2l0aCBDT05GSUdfRUZJX1NUVUIgb25seS4gCj4gCj4gVGhlIGN1cnJlbnQgYWRkaXRp
b25hbCBoZWFkZXIgaXMgb25seSA2NCBieXRlcyBhbmQgYWxzbyByZXF1aXJlZCBmb3IKPiBib290
aSBpbiBVLWJvb3QuIFNvIGl0IHNob3VsZG4ndCBkaXNhYmxlZCBmb3IgUy1tb2RlLgo+IAo+IERp
c2FibGluZyBpdCBmb3IgTS1Nb2RlIExpbnV4IGlzIG9rYXkgYmVjYXVzZSBvZiBtZW1vcnkgY29u
c3RyYWludCBhbmQKPiBNLU1vZGUgbGludXggd29uJ3QgdXNlIFUtYm9vdCBhbnl3YXlzLgo+IAo+
PiBJIGhhdmUgTS1tb2RlIFUtYm9vdCB3b3JraW5nIHdpdGggYm9vdGVsZiB0byBzdGFydCBCQkws
Cj4+IGFuZCBhdCBzb21lIHBvaW50LCBJ4oCZbSBob3Bpbmcgd2UgY2FuIGhhdmUgYSBNLW1vZGUg
bGludXgga2VybmVsIGJlCj4+IHRoZSBTQkkgcHJvdmlkZXIgZm9yIFMtbW9kZSBrZXJuZWxzLCAK
PiAKPiBXaHkgZG8geW91IHdhbnQgYmxvYXQgYSBNLU1vZGUgc29mdHdhcmUgd2l0aCBMaW51eCBq
dXN0IGZvciBTQkkKPiBpbXBsZW1lbnRhdGlvbj8KPiAKPiBVc2luZyBMaW51eCBhcyBhIGxhc3Qg
c3RhZ2UgYm9vdCBsb2FkZXIgaS5lLiBMaW51eEJvb3QgbWF5IG1ha2Ugc2Vuc2UKPiB0aG91Z2gu
Cj4gCgpCb290IHRpbWUsIGFuZCBlYXNlIG9mIGRldmVsb3BtZW50LCBhbmQgc2ltcGxpZmllZCBz
eXN0ZW0gbWFuYWdlbWVudC4KCkhhdmluZyBNLW1vZGUgbGludXggYXMgYSBzdXBlcnZpc29yL2Jv
b3Qga2VybmVsIGNhbiBnZXQgdXMgdG8gcmVzcG9uZGluZwp0byBIVFRQUy9TU0gvZXRjIHJlcXVl
c3RzIHdpdGhpbiBzZWNvbmRzIG9mIHBvd2VyLW9uLCB3aGlsZSB0aGUg4oCYYm9vdOKAmQprZXJu
ZWwgY2FuIGJlIGxvYWRpbmcgZ3Vlc3QgUy1tb2RlIGtlcm5lbHMgZnJvbSB0aGluZ3MgbGlrZSBO
Vk1FIGZsYXNoCmRyaXZlcyB0aGF0IGFyZSBnb2luZyB0byBiZSBhIGxvdCBtb3JlIGNvZGUgYW5k
IGRldmVsb3BtZW50IHRvIHN1cHBvcnQgaW4KVS1ib290IG9yIGFueSBvdGhlciBub24tbGludXgg
ZGVkaWNhdGVkIGJvb3QgbG9hZGVyLgoKVGhlcmXigJlzIGFsc28gYSB2ZXJ5IHN0cm9uZyBzZWN1
cml0eSBhcmd1bWVudCwgYXMgTGludXggaXMgZ29pbmcgdG8gZ2V0IHRoZQpsYXJnZXN0IGFuZCBi
cm9hZGVzdCBzZWN1cml0eSByZXZpZXcsIGFuZCB3aWxsIGxpa2VseSBnZXQgc29mdHdhcmUgdXBk
YXRlcwphIGxvdCBmYXN0ZXIgdGhhbiBkZWRpY2F0ZWQgYm9vdCBmaXJtd2FyZXMgd2lsbC4KCkFu
b3RoZXIgcmVhc29uIHdvdWxkIGJlIHNoYXJpbmcgdGhlIHNhbWUga2VybmVsIGJpbmFyeSAoZWxm
IGZpbGUpIGZvciBib3RoCk0tbW9kZSwgYW5kIFMtbW9kZSwgYW5kIHVzaW5nIHRoZSBkZXZpY2Ug
dHJlZSBwYXNzZWQgdG8gZWFjaCB0byBzcGVjaWZ5CndoaWNoIG1vZGUgaXQgc2hvdWxkIGJlIHJ1
bm5pbmcgaXQuIFRoZXJlIGFyZSBwcm9iYWJseSBhIGJ1bmNoIG9mIGdvdGNoYXMKd2l0aCB0aGlz
IGlkZWEsIGFuZCBldmVuIHNvIEkgc3VzcGVjdCBzb21lb25lIHdpbGwgZGVjaWRlIHRvIGdvIGFo
ZWFkIGFuZApqdXN0IGRvIGl0IGV2ZW50dWFsbHkgYmVjYXVzZSBpdCBjb3VsZCBtYWtlIHRlc3Rp
bmcsIHZhbGlkYXRpb24sIGFuZCBzZWN1cml0eQp1cGRhdGVzIGEgbG90IGVhc2llciBmcm9tIGFu
IG9wZXJhdGlvbmFsL2RlcGxveW1lbnQgcG9pbnQgb2Ygdmlldy4KCkxpbnV4YmlvcyBjb252aW5j
ZWQgbWUgdGhhdCBpZiB5b3Ugd2FudCB0byBkbyBhIHJlYWxseSBsYXJnZSBjbHVzdGVyLAp5b3Ug
Y2FuIGJ1aWxkLCBtYW5hZ2UsIGFuZCBydW4gc3VjaCBhIHRoaW5nIHdpdGggZmV3ZXIgcGVvcGxl
IGFuZAplbmdpbmVlcmluZyBjb3N0IHRoYW4gaWYgeW91IGhhdmUgYWxsIHRoZXNlIGV4dHJhIGxh
eWVycyBvZiBib290IGZpcm13YXJlCnRoYXQgcmVxdWlyZSBzb21lIGNvbXBhbnkgdG8gaGF2ZSBm
aXJtd2FyZSBlbmdpbmVlcnMgYW5kIGxvdHMgb2YgZXh0cmEKc3lzdGVtIHRlc3Rpbmcgb24gdGhl
IGZpcm13YXJlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2
Cg==
