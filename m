Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F814B8855
	for <lists+linux-riscv@lfdr.de>; Fri, 20 Sep 2019 02:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Mi6dbXp/OlTH/v2LOJ6/IN7Lwqb5e0NfFIhZZWaQ58=; b=gKm7WLJGAbZ4SO
	s1aF1HwDDhKLltA8v6TxkDz1vCnSyf0fevt17G/Dp3Nfq11/fiFkrNGZAmgSvLyForefcVqcB3Ara
	rczXmJHe5WpLxikNC0UHqR51CVR0Q/IjK/sd2Rn8LRjUwfxyXoVsxYvg1iOTkNZmf7g3ExDlgWexE
	b+chjj/CXFnnGh9ldR20u90Pr5XHuHrUK8maOviBwiXAtaFDSyk5xiiF+nb8masQOSb1BNRXM6ggM
	o6gWxg+CA7jzh35uiasXev9zq8cjw1psk9p4obEoWVCj6pbE+0RNNU9NerKYNdeUzEJfXQxJgLOla
	6pRlUObabfjHl/c2fhmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB6TI-0003FT-LZ; Fri, 20 Sep 2019 00:08:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB6Ss-00034q-Cd; Fri, 20 Sep 2019 00:07:59 +0000
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5BB821BE5;
 Fri, 20 Sep 2019 00:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568938073;
 bh=KAhGCSVOVtUtAdEEuBhsqNfJhp1wcq6UJPR1rEams+Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=v5PB0HhvLmN/6ZaebrnHpnUH8NPDVNrrZqFQJxlbGHGW5BjN98ufBDZu0YRL8ANiQ
 BHqOCR3wlr8v5DE9t9rfG9yqZ1DCDNMv6n2DSES9zAB5DSHPlgCTPmZGM6nLPW8pkH
 s3npw8z3tv+lCr63gyPA3pj9qac4w4UP86/GKnD8=
Received: by mail-wr1-f48.google.com with SMTP id q17so4904115wrx.10;
 Thu, 19 Sep 2019 17:07:52 -0700 (PDT)
X-Gm-Message-State: APjAAAWZhlOBFewReH5S6L9tNQj0//OJG5e+8MwVyjaece3fm5qgMr8V
 NuPFmVpkrbL5ZgiVE8/V8nhalgtmOGEHXRf/SjA=
X-Google-Smtp-Source: APXvYqzYKnFXikeBrYgOpER2Qjc+5Diq7t0DgzMJf2ATPzJa1qK18MTpVnoNyg+SDqozE2cOBqwBEvImB62CtwuT4PI=
X-Received: by 2002:adf:fe0f:: with SMTP id n15mr9371291wrr.343.1568938071266; 
 Thu, 19 Sep 2019 17:07:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
 <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
 <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
 <057a0af3-93f7-271c-170e-4b31e6894c3c@linaro.org>
 <CAJF2gTRbyfrUqAULPqJTXdxx8YOscPqAEuMsoJ+dTNobNrUV1g@mail.gmail.com>
 <20190919151844.GG1013538@lophozonia>
In-Reply-To: <20190919151844.GG1013538@lophozonia>
From: Guo Ren <guoren@kernel.org>
Date: Fri, 20 Sep 2019 08:07:38 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQtk7VhBgUan6WOZgc3UaQzHL8SxMi=yiHG-8eC207BbQ@mail.gmail.com>
Message-ID: <CAJF2gTQtk7VhBgUan6WOZgc3UaQzHL8SxMi=yiHG-8eC207BbQ@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_170758_455712_9177A2EE 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aou@eecs.berkeley.edu,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, christoffer.dall@arm.com,
 iommu@lists.linux-foundation.org, Mike Rapoport <rppt@linux.ibm.com>,
 Anup Patel <anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 11:18 PM Jean-Philippe Brucker
<jean-philippe@linaro.org> wrote:

>
> The SMMU does support PCI Virtual Function - an hypervisor can assign a
> VF to a guest, and let that guest partition the VF into smaller contexts
> by using PASID.  What it can't support is assigning partitions of a PCI
> function (VF or PF) to multiple Virtual Machines, since there is a
> single S2 PGD per function (in the Stream Table Entry), rather than one
> S2 PGD per PASID context.
>
In my concept, the two sentences "The SMMU does support PCI Virtual
Functio" v.s. "What it can't support is assigning partitions of a PCI
function (VF or PF) to multiple Virtual Machines" are conflict and I
don't want to play naming game :)

-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
