Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AC97BAC5
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 09:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Um7B+QzzHJqYy7uWPhepVAMekt0JcX6msp1MbOgM4g=; b=LmibgIVNpQxZ00
	pSM8ulkLJRju7a7wvEeotzYmK02PuWSGU14uZ/OsO62CoQGpyU8lTm+sAFi4a7KO7FQabB3VBxZjL
	VSH3UtNByHpPU015ukZlGs+KzAy6HGb6sy1LQcgb9Gtf7g+6oNvN27eqQmylntne882oEMK4d1/gV
	KNhxo8Es9RaiU7i5OZXtrOnHo/IJo8TLRBhCvULx45O6poSZdke/q150DPfWnvlsO4ncYQr4vBCOs
	hYNJnf5H1pqx1oko5tnKItWE3hL799ywlOIvaEevWfFXqy0q7U8E88L8reVm0UGPppuRKibdm34KI
	MZvwUQpwHI5CZjv9zbWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsj9n-0005Rj-PF; Wed, 31 Jul 2019 07:36:19 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsj9k-0005RM-P8
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 07:36:18 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 7F9C6AD35;
 Wed, 31 Jul 2019 07:36:15 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Atish Patra <Atish.Patra@wdc.com>
Subject: Re: 5.3-rc2: Found incompatible CPU
References: <mvm4l33adof.fsf@suse.de>
 <37DB11CB-89AE-42C3-8DA2-7A65F6338A4B@wdc.com>
X-Yow: I'm having a RELIGIOUS EXPERIENCE..  and I don't take any DRUGS
Date: Wed, 31 Jul 2019 09:36:15 +0200
In-Reply-To: <37DB11CB-89AE-42C3-8DA2-7A65F6338A4B@wdc.com> (Atish Patra's
 message of "Wed, 31 Jul 2019 06:48:08 +0000")
Message-ID: <mvmsgqm8xlc.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_003616_962702_409AC886 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gSnVsIDMxIDIwMTksIEF0aXNoIFBhdHJhIDxBdGlzaC5QYXRyYUB3ZGMuY29tPiB3cm90ZToK
Cj4g77u/T24gNy8zMC8xOSwgNTo1MSBBTSwgImxpbnV4LXJpc2N2IG9uIGJlaGFsZiBvZiBBbmRy
ZWFzIFNjaHdhYiIgPGxpbnV4LXJpc2N2LWJvdW5jZXNAbGlzdHMuaW5mcmFkZWFkLm9yZyBvbiBi
ZWhhbGYgb2Ygc2Nod2FiQHN1c2UuZGU+IHdyb3RlOgo+Cj4gICAgIFRyeWluZyB0byBib290IDUu
My1yYzIgb24gdGhlIEhpRml2ZSBJJ20gZ2V0dGluZyAiRm91bmQgaW5jb21wYXRpYmxlCj4gICAg
IENQVSIgZm9yIGVhY2ggY3B1LCB3aGljaCBtZWFucyB0aGF0IG9mX2RldmljZV9pc19jb21wYXRp
YmxlKG5vZGUsCj4gICAgICJyaXNjdiIpIGlzIGZhaWxpbmcuICBBbnkgaWRlYT8KPiAgICAgCj4g
UHJvYmFibHkgd3JvbmcgRFQgPyBJZiB5b3UgYXJlIHVzaW5nIE9wZW5TQkksIHlvdSBuZWVkIHRv
IHBvaW50IHRvIHRoZSBjb3JyZWN0IERUIGJ1aWx0IGJ5IGtlcm5lbCBieSB1c2luZyBGV19QQVlM
T0FEX0ZEVF9QQVRILgoKSSBkb24ndCBzZWUgYW55IGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgNS4y
IGFuZCA1LjMgRFRzLgoKQW5kcmVhcy4KCi0tIApBbmRyZWFzIFNjaHdhYiwgU1VTRSBMYWJzLCBz
Y2h3YWJAc3VzZS5kZQpHUEcgS2V5IGZpbmdlcnByaW50ID0gMDE5NiBCQUQ4IDFDRTkgMTk3MCBG
NEJFICAxNzQ4IEU0RDQgODhFMyAwRUVBIEI5RDcKIkFuZCBub3cgZm9yIHNvbWV0aGluZyBjb21w
bGV0ZWx5IGRpZmZlcmVudC4iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2Cg==
