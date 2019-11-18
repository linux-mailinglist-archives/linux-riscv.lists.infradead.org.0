Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC46FFE38
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 07:12:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAaEKizRuLZCZ/w3dUla3CNgEAPycaSSq3pJoE8dNtk=; b=ipZIh3qVdNsY0g
	1ltsTPDV318j8OBKObMsGcjIkqX4tIFZp9GOZszuUfbjB+MqLT95t87AAFS6MIuBfmNnNBtu2J+KG
	C9G7jUh+/5JWztkDACmcDb6QlQxm70AJeeDHFUBJo+IEUdIqlXqg3k4bVRzJsZy41QxpJbUI6m1Nq
	PtOXDHGjzNkxGqlMkALWewrt0+O1IbmzcVRBmW4wR4AOIFgB+EStt+1FB4BWSxtQgRFKEdlwI4wgj
	LUJnY6hEQ0AkwWQDfMpdpByMVky4ZtZlXLqtCtH8fxVc0FGUVlAs8y61lxWuNsWpM/Ty8HPXp5qnw
	KtXLUBifj6FrgSffWOHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWaH2-0007a0-OM; Mon, 18 Nov 2019 06:12:32 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWaGy-0007ZK-5C
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 06:12:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id b3so17921933wrs.13
 for <linux-riscv@lists.infradead.org>; Sun, 17 Nov 2019 22:12:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AJsaT5DgrHtaCNma+B9BtLu3BvxW/8LIu7bVrOjvJcw=;
 b=zG0GfU55CfIq0bxqCfyIHFIxx3fvkMttFzS3Xkc1BHyNNxJ63t+K35DzNEi2QJdorL
 eAuy1vxsuQFq33tue6ItS9AVZgi0iP+xbGIJB+GW2xcHzbjsvNwcbSYUz31d+geX15Ko
 E31HfnnHnP8zKrOFKkMQJWguItFUW2eNV3A5Vy87q8PItuesaKxhwh5e/6IOhMMivIFG
 BiKyNMn8a2x0wFOqxXn3vGd4SMU/E78F9mBux91j2CvejF69EVbFQHzsDOsyQcL4PLrZ
 6i+SU7I4c2Mapi4d1HWYuguHDBKtXedYFCWauGtiIXNvqBuP1tcZtHowTHGiVnAn6jyS
 rE6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AJsaT5DgrHtaCNma+B9BtLu3BvxW/8LIu7bVrOjvJcw=;
 b=sSN5u2sqyTzpfhacvM9bUsuRhxFhbRuXbItxHg4IA8jcrpfF8AWmxHxOgwLLtTNbRA
 skejUtQ6MaFULcSRjJ3r/P+zlX1OCigLS6UFKInNlwLMNfffnOt3tAin9UnFMt22Jubf
 P7M0UPR6/1jGDqNTPrRAeoeB4DsYyA3H3QEtJHVe9KNfny34PdK5kPZMQ8krt6/8j38u
 567rxny0UBLsYdTkdMNVeZEPh3ZOxqgfJnJfEYKBMJl6lbPeQH4ZAhP07vLNwC6lQ4Xq
 Q+3xXUGzputRHRbTlULHl24rviBEPudIjQi7H5RtZJhPDSmGFSedfg9RbQnFL1H9gvPv
 NVvw==
X-Gm-Message-State: APjAAAVkHr/EaefguWPZDN1iy3OJ2g3D5JZFzTpnaTawHeImrgdDSw6h
 nSVmecLQu4XX1pm+JbddMyc3pFTzcyYeuVEzYHyMqw==
X-Google-Smtp-Source: APXvYqwB3mALuF+xrfOFxo6FhxUJ3+/T3sFpcxYqdgA9qswdYF/EtXU0VTIbAKX+PRN8dPiqpo1l4F1iCFTwAIDgVcs=
X-Received: by 2002:adf:b746:: with SMTP id n6mr27431556wre.65.1574057545931; 
 Sun, 17 Nov 2019 22:12:25 -0800 (PST)
MIME-Version: 1.0
References: <20191107212408.11857-1-hch@lst.de>
 <cca46a52ee91548962e2f9da4cf2202e@mailhost.ics.forth.gr>
In-Reply-To: <cca46a52ee91548962e2f9da4cf2202e@mailhost.ics.forth.gr>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 18 Nov 2019 11:42:14 +0530
Message-ID: <CAAhSdy0N0m+ibSdOKnn3XSfcbb3y068ek6aJNUzHaVVfRcPNbg@mail.gmail.com>
Subject: Re: QEMU RISC-V virt machine poweroff driver
To: Nick Kossifidis <mick@ics.forth.gr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_221228_334017_BCCBF665 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gU2F0LCBOb3YgMTYsIDIwMTkgYXQgMzo0NSBBTSBOaWNrIEtvc3NpZmlkaXMgPG1pY2tAaWNz
LmZvcnRoLmdyPiB3cm90ZToKPgo+IM6jz4TOuc+CIDIwMTktMTEtMDcgMjM6MjQsIENocmlzdG9w
aCBIZWxsd2lnIM6tzrPPgc6xz4jOtToKPiA+IEhpIGFsbCwKPiA+Cj4gPiB0aGlzIHBhdGNoIGFk
ZCBhIGRyaXZlciBmb3IgdGhlIHRlc3QgZGV2aWNlIGluIHRoZSBRZW11IFJJU0MtVgo+ID4gdmly
dCBtYWNoaW5lIHdoaWNoIGFsbG93cyBwcm9wZXJseSBzaHV0dGluZyBkb3duIHRoZSBWTS4KPiA+
IEl0IGFsc28gaXMgYWRkZWQgdG8gdGhlIHJpc2N2IGRlZmNvbmZpZyBnaXZlbiB0aGF0IHFlbXUt
dmlydAo+ID4gaXMgdGhlIG1vc3QgcG9wdWxhciByaXNjdiBwbGF0Zm9ybS4KPiA+Cj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gbGludXgtcmlz
Y3YgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cj4K
PiBXZSBkbyB0aGlzIGFscmVhZHkgdGhyb3VnaCBPcGVuU0JJLCBJIGNvbnRyaWJ1dGVkIGEgcGF0
Y2ggZm9yIHRoaXMgc29tZQo+IHRpbWUgYWdvLgo+Cj4gaHR0cHM6Ly9naXRodWIuY29tL3Jpc2N2
L29wZW5zYmkvY29tbWl0LzUxZTU0MzUxMWE3NDI1ZGExYTUzNzhlMTQ5ZGUwYjQ1OTI4YzcxMTEj
ZGlmZi0zNmVjYzQ3MzEzZmYxM2U0MDZjNTNiOTk0NzFmMjk0ZQo+Cj4gTGFzdCB0aW1lIEkgY2hl
Y2tlZCBJIGNvdWxkIGp1c3QgaGFsdCBhbmQgdGhlIHN5c3RlbSB3b3VsZCBzaHV0IGRvd24KPiBw
cm9wZXJseS4KCldlIG9ubHkgaGF2ZSBwb3dlcm9mZiBTQkkgY2FsbCBpbiBTQkkgdjAuMSBzcGVj
LgoKQWxzbywgd2UgaGFkIHByb3Bvc2VkIFNCSSB2MC4yIFNSU1QgZXh0ZW5zaW9uIGhhdmluZyBi
b3RoClBvd2Vyb2ZmIGFuZCBSZWJvb3QgU0JJIGNhbGxzIGJ1dCBiZWZvcmUgd2UgY2FuIGhhdmUg
dGhpcyBTQkkKZXh0ZW5zaW9uIHdlIG5lZWQgdG8gY2xhcmlmeSBzY29wZSBvZiBTQkkgaW50ZXJm
YWNlIGluIFJJU0MtVgpwcml2aWxlZ2Ugc3BlYyBzbyB0aGF0IHdlIGNhbiBoYXZlIHN5c3RlbS1s
ZXZlbCBTQkkgY2FsbHMgZGVmaW5lZAppbiBTQkkgc3BlYy4gSW4gZnV0dXJlLCB3ZSB3aWxsIGJy
aW5nIGJhY2sgdGhlIHByb3Bvc2FsIGZvciBTQkkgdjAuMgpTUlNUIGV4dGVuc2lvbi4KClRoZXJl
IGFyZSB0d28gY2FzZXMgaW4gd2hpY2ggd2UgbWlnaHQgbmVlZCBTT0Mgc3BlY2lmaWMKUG93ZXJv
ZmYgYW5kIFJlYm9vdCBkcml2ZXJzIGluIExpbnV4OgoxLiBTQkkgdjAuMiBvbndhcmRzIGFsbCBT
QkkgY2FsbHMgYXJlIG9wdGlvbmFsIHNvIFNPQyB2ZW5kb3IKY2FuIGNob29zZSB0byBwcm92aWRl
IGV4cGxpY2l0IGRyaXZlciBpbnN0ZWFkIG9mIGltcGxlbWVudGluZwpTQkkgY2FsbHMgZm9yIFBv
d2Vyb2ZmIGFuZCBSZWJvb3QuCjIuIFRoZSBNLW1vZGUgTk9NTVUgTGludXggZG9lcyBub3QgaGF2
ZSBTQkkgaW50ZXJmYWNlCnNvIGZvciB0aGlzIGNhc2UgU09DIHZlbmRvcnMgd2lsbCBoYXZlIHRv
IHByb3ZpZGUgZXhwbGljaXQKZHJpdmVycy4KCklmIFNPQyBQb3dlcm9mZiBhbmQgUmVib290IG1l
Y2hhbmlzbXMgYXJlIHNpbXBsZSBlbm91Z2gKdGhlbiBTT0MgdmVuZG9ycyBjYW4gc3RyYWlnaHQg
YXdheSB1c2UgU1lTQ09OIFBvd2Vyb2ZmCmFuZCBTWVNDT04gUmVib290IGRyaXZlcnMgaW5zdGVh
ZCBvZiB3cml0aW5nIGl0IGZyb20gc2NyYXRjaC4KClJlZ2FyZHMsCkFudXAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcg
bGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
