Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939B324CF7
	for <lists+linux-riscv@lfdr.de>; Tue, 21 May 2019 12:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJcdSTKQyO52PXZw0su4s8af3/mh8vG0z/wy0qJEpFM=; b=knhJCRUMGw0chj
	N2H59MnroOdD8clOt7CFJgMMJavJbsT0tncNr/Xx6kPNmh9HqvPnjzBzwL0xS/ZfCoXeCf2RXd6bE
	IXL1yk6nZ+8o9P7iTac9oLPC3WllTOeJBLh02xmEPTkw97CKmuupYjYQWlPXWSCeAMF6ei3QGOeP9
	xEDDrRGd36D7TcUQxc4V7jb1gPub2yVb52VQ6DAfvRZ5zFai7D0y/I03ms8Bko1PqWayVQ00aOXMG
	vQr3TE6x9s5HVdRE/p4S4EqNgMCU/XucjA/3jJxjoCE9XGUlVVLene6ETOk57Fup/V0nIbjsVd1Jw
	yd+bxvVlPkyAxf8cJUcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2Ae-00034J-GT; Tue, 21 May 2019 10:39:00 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Ab-000341-Ah
 for linux-riscv@lists.infradead.org; Tue, 21 May 2019 10:38:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1436EAD63;
 Tue, 21 May 2019 10:38:56 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Gary Guo <gary@garyguo.net>
Subject: Re: [PATCH] riscv: move flush_icache_{all, mm} code to proper location
References: <LO2P265MB0847855A503C55BB11A59A89D6730@LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM>
X-Yow: I would like to urinate in an OVULAR, porcelain pool --
Date: Tue, 21 May 2019 12:38:55 +0200
In-Reply-To: <LO2P265MB0847855A503C55BB11A59A89D6730@LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM>
 (Gary Guo's message of "Wed, 6 Mar 2019 17:00:21 +0000")
Message-ID: <mvmk1ekhz28.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_033857_511375_EE66A84E 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTcOkciAwNiAyMDE5LCBHYXJ5IEd1byA8Z2FyeUBnYXJ5Z3VvLm5ldD4gd3JvdGU6Cgo+IGRp
ZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2NhY2hlZmx1c2guaCBiL2FyY2gvcmlz
Y3YvaW5jbHVkZS9hc20vY2FjaGVmbHVzaC5oCj4gaW5kZXggOGYxMzA3NDQxM2E3Li4xZjRiYTY4
YWI5YWEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9jYWNoZWZsdXNoLmgK
PiArKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL2NhY2hlZmx1c2guaAo+IEBAIC00Nyw3ICs0
Nyw3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBmbHVzaF9kY2FjaGVfcGFnZShzdHJ1Y3QgcGFnZSAq
cGFnZSkKPiAgCj4gICNlbHNlIC8qIENPTkZJR19TTVAgKi8KPiAgCj4gLSNkZWZpbmUgZmx1c2hf
aWNhY2hlX2FsbCgpIHNiaV9yZW1vdGVfZmVuY2VfaShOVUxMKQo+ICt2b2lkIGZsdXNoX2ljYWNo
ZV9hbGwodm9pZCk7Cj4gIHZvaWQgZmx1c2hfaWNhY2hlX21tKHN0cnVjdCBtbV9zdHJ1Y3QgKm1t
LCBib29sIGxvY2FsKTsKCkVSUk9SOiAiZmx1c2hfaWNhY2hlX2FsbCIgW2RyaXZlcnMvbWlzYy9s
a2R0bS9sa2R0bS5rb10gdW5kZWZpbmVkIQoKQW5kcmVhcy4KCi0tIApBbmRyZWFzIFNjaHdhYiwg
U1VTRSBMYWJzLCBzY2h3YWJAc3VzZS5kZQpHUEcgS2V5IGZpbmdlcnByaW50ID0gMDE5NiBCQUQ4
IDFDRTkgMTk3MCBGNEJFICAxNzQ4IEU0RDQgODhFMyAwRUVBIEI5RDcKIkFuZCBub3cgZm9yIHNv
bWV0aGluZyBjb21wbGV0ZWx5IGRpZmZlcmVudC4iCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlz
Y3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
