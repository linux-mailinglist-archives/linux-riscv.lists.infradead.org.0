Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEB72A35B
	for <lists+linux-riscv@lfdr.de>; Sat, 25 May 2019 10:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqP6MUOMb6h9b6IjXQN6KsNBfS3DvCJFcgkurmj3OtY=; b=L+S+vQDMjRrLTH
	WX0sHVxO3n6Jqo0du5Wy+faf8ZYnvdlGuNji7ZaPMaCU6fBlylGp6Xh3737izZeOve0Rn8115FwTM
	ojhxlOLt7e+w3ZFbCYnQORsonoYqNV1vDBRKyRpgdqpMuAy5aah+UxvvBXq/ukxd/y1osHVVX3XpM
	fdgxFCxPR5UUwNpnPTh58wBpBGHvFXazpGvJdYVgefLX1IfvWHCDt8/DUP2YIk6UQGBscp7ilRQa7
	lPGF0iNJlhiH8wwqMm+KZ0epJ+EdIjLqDGE7PaKP+XdlZltuCMZwj5iywkCMwz6KM1vwmvpDO9/vs
	XQHseqIVY0BrLwep6mqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hURhO-0004uz-6t; Sat, 25 May 2019 08:06:38 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hURhJ-0004uc-PO
 for linux-riscv@lists.infradead.org; Sat, 25 May 2019 08:06:35 +0000
Received: by mail-wr1-x42b.google.com with SMTP id l2so12061000wrb.9
 for <linux-riscv@lists.infradead.org>; Sat, 25 May 2019 01:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZsWdWK6UdGu8ZUnkuEZZRuPN2iGpAp9q8B9OUgi2Fbo=;
 b=qoIKfQehF2rfwAlQsGFM8A+En9qgH2dWx7D5vNPjXDYzRgk1Fm9XO5yAXd8aoQKzlU
 +yxxiMy90+zMPGRR3m+RTpQPzbiqN+lA6hADZ7nyMzo1aTy8v19o2CnZ/IIsN8UzyPr3
 G1NHPtpgJZwVGnQPSqiSctChjCPkwUg7oKZqQMtRMnx6Mpx+EogJzijZh1D1UK7fUvq4
 qGp6f6JxDRh7hG5ZuU20ERuk5aCfQp+ibiaOcCgG059WMcab/1Lbkwd0E3+6ZgIQIpku
 woTC89uU3jnoYnhW27STxrcNkIkoyHgsWkI3BoNdNEUN940K9vZJHQH0tF2efCC8oNYB
 BgxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZsWdWK6UdGu8ZUnkuEZZRuPN2iGpAp9q8B9OUgi2Fbo=;
 b=ikrhDt8ujyhFtifDivJhVtEmqDfByIwpDo0bAgBRze0lKnAtIx0O+n9IR8LVje3VC+
 eeTlGT7osKNoQVM8nchGmnr5BLyRXm5OjakW81/NzFKiTRrQk5wVf01m7bzcsGqpzyNb
 cxGPqjrXwZgqnURj201dyV2mTmwCN1T7yFh9Canhyyve7lJ6xU4c2LAoR6hJ2XJpZtTV
 lGqeZhWs7F/RubBsoNwL8qdGzXvvFeyEJq/tzHN/2zL5DxJUElnJmQDHOOpyEdX2W60T
 qWjVV/ji61WjGGzYDvqmSXSp/vWRlZD+N9qSmCbe5rye/eUMRkrwKQc6DnkhoN6ilfDP
 VnJg==
X-Gm-Message-State: APjAAAXL4V/F6Fqipusu9h6oKAQf/W3QDuvY0t97XszX9wfcBhN4jaHH
 eSFsBc4zgeNGnBhWcxbFA+0MD8SU7FVTutp1P088xg==
X-Google-Smtp-Source: APXvYqyZ2d3U8I0bnInPQt8xSimBe0EqToG7hnPkbNcpnR80gLtHAWwqbsUs97VZclPVp8K/gT2C79W9HqwV1Z4i5bo=
X-Received: by 2002:adf:e711:: with SMTP id c17mr28812913wrm.227.1558771590909; 
 Sat, 25 May 2019 01:06:30 -0700 (PDT)
MIME-Version: 1.0
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
In-Reply-To: <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Sat, 25 May 2019 13:36:18 +0530
Message-ID: <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
Subject: Re: 5.2-rc1 boot on Unleashed
To: Troy Benjegerdes <troy.benjegerdes@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_010633_970895_789C74B1 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Palmer Dabbelt <palmer@sifive.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Anup Patel <anup.patel@wdc.com>, Atish Patra <atish.patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGkgVHJveSwKCk9uIFRodSwgTWF5IDIzLCAyMDE5IGF0IDM6NDUgQU0gVHJveSBCZW5qZWdlcmRl
cwo8dHJveS5iZW5qZWdlcmRlc0BzaWZpdmUuY29tPiB3cm90ZToKPgo+Cj4gPiBPbiBNYXkgMjIs
IDIwMTksIGF0IDM6NDMgUE0sIFBhdWwgV2FsbXNsZXkgPHBhdWwud2FsbXNsZXlAc2lmaXZlLmNv
bT4gd3JvdGU6Cj4gPgo+ID4gKyBBbnVwLCBUcm95Cj4gPgo+ID4gT24gV2VkLCAyMiBNYXkgMjAx
OSwgQXRpc2ggUGF0cmEgd3JvdGU6Cj4gPgo+ID4+IE9uIDUvMjIvMTkgOTo0MiBBTSwgUGF1bCBX
YWxtc2xleSB3cm90ZToKPiA+Pj4gQW0gY2hlY2tpbmcgb24gdGhpcyBub3cgYW5kIGhvcGUgdG8g
aGF2ZSBzb21lIGNvbmNsdXNpb24gb24gaXQgdGhpcyB3ZWVrLgo+ID4+Cj4gPj4gVGhhbmtzLiBB
bnkgY2hhbmNlIHlvdSBjYW4gdGFrZSBhIGxvb2sgYXQgdGhlIFUtQm9vdCBjbG9jayBkcml2ZXIg
dG8gcGF0Y2ggaXQKPiA+PiBhcyBwZXIgdGhlIERUIGNoYW5nZXMgPwo+ID4KPiA+IEkgcHJvYmFi
bHkgd29uJ3QgaGF2ZSB0aGUgY2hhbmNlIHRvIGdldCB0byBpdCBmb3IgYSB3aGlsZS4gIExvb2tz
IGxpa2UKPiA+IEFudXAgd2FzIHRoZSBvbmUgd2hvIHBvc3RlZCB0aGUgY2xvY2sgZHJpdmVyIHRv
IFUtQm9vdCAtIGNhbiBoZSB0YWtlIGEKPiA+IGxvb2sgYXQgaXQ/Cj4gPgo+ID4gV2UndmUgYWxz
byBhc2tlZCBUcm95IHRvIGxvb2sgYXQgdXBzdHJlYW0gVS1ib290IHJlbGF0ZWQgaXNzdWVzLCBi
dXQKPiA+IEknbSB1bnN1cmUgd2hlbiBwYXRjaGVzIHdpbGwgc3RhcnQgZmxvd2luZyB1cHN0cmVh
bS4KPiA+Cj4gPgo+ID4gLSBQYXVsCj4KPiBPbmNlIEkgZmlndXJlIG91dCB3aHkgSeKAmW0gZ2V0
dGluZyBUWCB0aW1lb3V0cyBvbiB0aGUgbWFjYiBkcml2ZXIgYW5kIGhhdmUgc29tZXRoaW5nIHdv
cmtpbmcgSSBjYW4gc3RhcnQgdXBzdHJlYW1pbmcgdGhlIHUtYm9vdCBwYXRjaGVzLgo+Cj4gRm9y
IG5vdywgdGhlIHdvcmstaW4tcHJvZ3Jlc3MgaXMgYXQgaHR0cHM6Ly9naXRodWIuY29tL3NpZml2
ZS91LWJvb3QvdHJlZS9zYW5kYm94CgpCYXNlZCBvbiB5b3VyIGNvbW1pdHMgaW4gYWJvdmUgR2l0
UmVwbywgaXQgc2VlbXMgeW91IGFyZSB0cnlpbmcgZW50aXJlClUtQm9vdCBpbiBNLW1vZGUuCgpD
dXJyZW50IGJvb3QtZmxvdyBvZiBTLW1vZGUgVS1Cb290IGlzOgpaU0JMIChNLW1vZGUpIC0+IEZT
QkwgKE0tbW9kZSkgLT4gT3BlblNCSS9CQkwgKE0tbW9kZSkgLT4gVS1Cb290IChTLW1vZGUpCgpU
aGUgVS1Cb290IFNQTCBjYW4gcGVyZmVjdGx5IHJlcGxhY2UgU2lGaXZlIEZTQkwgdG8gaGF2ZSBm
b2xsb3dpbmcKYm9vdC1mbG93OgpaU0JMIChNLW1vZGUpIC0+IFUtQm9vdCBTUEwgKE0tbW9kZSkg
LT4gT3BlblNCSS9CQkwgKE0tbW9kZSkgLT4gVS1Cb290IChTLW1vZGUpCgpDYW4geW91IGV4cGxh
aW4gYWR2YW50YWdlcyBvZiB1c2luZyBmdWxsIFUtQm9vdCBNLW1vZGUgdG8gcmVwbGFjZQpGU0JM
IGFzIGNvbXBhcmVkIHRvIFUtQm9vdCBTUEwgTS1tb2RlIHJlcGxhY2luZyBGU0JMID8KClJlZ2Fy
ZHMsCkFudXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LXJpc2N2IG1haWxpbmcgbGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
