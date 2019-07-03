Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D245EF7E
	for <lists+linux-riscv@lfdr.de>; Thu,  4 Jul 2019 01:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POeOqCAHwD9zawAFUy+tdv47KBNQjr38X5A03JUwdFc=; b=nUTZWEoDuQsNaD
	cTk1rxP1dlfYvtVWprI+9rNu5pbIAZVexKP1zGHxsX94C94bThzbhY4Hpmfdz/3mDaBwnNd/Dbbkm
	+8jAzPAoEtJkhWspGSr8srM5ZlloJFbcLSMZaqxTai/K217qsBsfFBDfBuorVNnMjUY80Evpk1lBf
	y6Y1HVsi/3X9ewYpmyLZTEDiDVtr3ArmIzuz9BIKHMxmxaxTvfkKTTM8Hyiik3XgRDxKqkEHtbjJh
	N/+heYK2TdErFWM3n4iI1PizLk3Xk4hyEUMAPDNShJiPbpnev3Gbq8vHCsUzoix2dkCdtJmocWvxt
	0YPH2JgXnPHnWe+jaznQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hioJl-0002nr-3E; Wed, 03 Jul 2019 23:05:37 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hioJA-0001Ff-16; Wed, 03 Jul 2019 23:05:00 +0000
Date: Wed, 3 Jul 2019 16:04:59 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Alexandre Ghiti <alex@ghiti.fr>
Subject: Re: [PATCH v3 0/2] Hugetlbfs support for riscv
Message-ID: <20190703230459.GA26830@infradead.org>
References: <20190701175900.4034-1-alex@ghiti.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701175900.4034-1-alex@ghiti.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, "H . Peter Anvin" <hpa@zytor.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mike Kravetz <mike.kravetz@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gTW9uLCBKdWwgMDEsIDIwMTkgYXQgMDE6NTg6NThQTSAtMDQwMCwgQWxleGFuZHJlIEdoaXRp
IHdyb3RlOgo+ICAgLSBpY2FjaGUtaHlnaWVuZSBzdWNjZWVkcyBhZnRlciBwYXRjaCAjMyBvZiB0
aGlzIHNlcmllcyB3aGljaCBsb3dlcnMgICAgICAgICAgIAo+ICAgICB0aGUgYmFzZSBhZGRyZXNz
IG9mIG1tYXAuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAoKSSB0aGluayDRlmNhY2hlLWh5Z2llbmUgd2lsbCBhbHNvIG5lZWQgYSBjYWxsIHRvIHJp
c2N2X2ZsdXNoX2ljYWNoZSBpbgpjYWNoZWZsdXNoKCkuCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0CmxpbnV4
LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
