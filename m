Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E75481AF
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 14:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9vYOJ5kZM+HJc4FxcyMY/ZKZPpYCq5rUK4bNAVQ51g=; b=P9A9hAH7vUE73O
	hYsJ4SZK3FmZjQGPlLWlOYIISSKeCzYKZaEpUcWcfkIJMenAeRv6wsBD+g7A3cb2dc5p3jaoobUs8
	19tRBqYUPvm11iF+ct2mqi6xSDesgzAgYHkm1ccLYN63kWl4CE3t9kd8cXK/CRwj/RfjQsFUSSPvV
	tErSF5gadADRZJm4NqmrNH6i5mnYu9pKJCyubfrVe8O7JtE92RJ+cgJmTEYAvGDg7yYX+Wls8Imkv
	XrjuQkfULOxDXC+98TMM2LFlWEpvVt4VShOXVE6PlNlX2rn1Vtl1CMAOK5wtMTBzqOpZ0Sk5VOCo+
	yQFj1G2c8sKiFWsBzMGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqbv-0003Pu-Pu; Mon, 17 Jun 2019 12:19:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqbs-0003Pd-Uk
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 12:19:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AECD3AD7C;
 Mon, 17 Jun 2019 12:19:39 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: Working device tree for the HifiveU
References: <mvmlfy05xjm.fsf@suse.de>
 <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com>
X-Yow: I had a lease on an OEDIPUS COMPLEX back in '81...
Date: Mon, 17 Jun 2019 14:19:39 +0200
In-Reply-To: <alpine.DEB.2.21.9999.1906170347460.19994@viisi.sifive.com> (Paul
 Walmsley's message of "Mon, 17 Jun 2019 03:58:46 -0700 (PDT)")
Message-ID: <mvm8su05rqc.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2.90 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_051941_141344_3B115506 
X-CRM114-Status: UNSURE (   9.98  )
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Jun 17 2019, Paul Walmsley <paul.walmsley@sifive.com> wrote:

> On Mon, 17 Jun 2019, Andreas Schwab wrote:
>
>> What is the correct device tree for the HifiveU that works both with
>> 5.2+ and U-Boot?
>
> U-Boot should follow the kernel's DT data:
>
> http://git.denx.de/?p=u-boot.git;a=blob;f=doc/device-tree-bindings/README;h=2ea3439a170236bd912930991ad70ee7289dcd29;hb=HEAD
>
> Thus the upstream-bound data is currently here:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git/log/?h=fixes

That is completely useless.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
