Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EDDB7AA5
	for <lists+linux-riscv@lfdr.de>; Thu, 19 Sep 2019 15:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5lky1NEd1+yUeBc5bo+Xj+pRTCOMNK0c2fA6BEN3Aw=; b=m1WIDU7Ykw4/2j
	NDVvAbtJqkSJKbsAaR/ITdT9md2mkh8ME0jhtDnQ4UvWr/bZxzn9ISz1xnC1tK+tTAGRIXqE0ebwB
	F8JzTt+14hmOB1uAjgutIwdhkm+0OhHc5kFTt8e/q1kuLmrT8WeIkb01oMewhaBLVw8hbnyVWaVzQ
	MSmvzeNmk63KhlcX79pLk7nrbpQqngET6rrUjDTyKV5dmIfehHMe7+d0807Jcjs/WFfVUDm6gedDd
	FpsZU0YCj3qYzMhetXegbztlS3Q4PZi1V4W1gx3Sjc247aNawq7ZkI+zgtLtoMHOensq9JT0AQc95
	127JMTRgiqoWCDM+GHQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwcy-0003KG-Eh; Thu, 19 Sep 2019 13:37:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwcS-00037i-WD; Thu, 19 Sep 2019 13:37:14 +0000
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B164F21D7E;
 Thu, 19 Sep 2019 13:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568900232;
 bh=4h3Wk30EhI1KisIg5rn7cH+Dc4+DOKJ7JCZLxO6zmPI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mwBzoNaTiK9xjLVihi6v8b+ryPsg0IP++84Wia1oIqwwNfxtQ14YDYKpBHJ3dYMni
 fBW0yG7v0NaSg/4OkKv0v7bY4ZNVgMqn10+8QuxFJes4isxMfpfRJSSSnElwMfLq/C
 aLk1/rm+0igwywEd+xuqNGYA8E4GRYk48izsxAtU=
Received: by mail-wr1-f54.google.com with SMTP id i1so3142042wro.4;
 Thu, 19 Sep 2019 06:37:11 -0700 (PDT)
X-Gm-Message-State: APjAAAW8dgMQNJRE1bjCpAla3if5YuhWtSuHvyGBGjh2U/65RLc+KgKd
 HDUyzAhL/KhRwRw0Eu2F2wMfIv729E19BKYhQME=
X-Google-Smtp-Source: APXvYqzlXvVrim8rTycGbIV+PmHAEsjEw4YXguoJ0i5mulID6kS2AA+pRkt/c/jlP2DTaZZMrey31vSOQlTtKW2gKOA=
X-Received: by 2002:a5d:6b49:: with SMTP id x9mr6988060wrw.80.1568900230203;
 Thu, 19 Sep 2019 06:37:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <mhng-166dcd4f-9483-4aab-a83a-914d70ddb5a4@palmer-si-x1e>
 <MN2PR04MB606117F2AC47385EF23D267D8D8D0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <20190916181800.7lfpt3t627byoomt@willie-the-truck>
 <MN2PR04MB60612846CD50ED157DE5AB548D8F0@MN2PR04MB6061.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB60612846CD50ED157DE5AB548D8F0@MN2PR04MB6061.namprd04.prod.outlook.com>
From: Guo Ren <guoren@kernel.org>
Date: Thu, 19 Sep 2019 21:36:58 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRu4cSPd09mXkUOxnL2HO0wnAzqeVr3a3He0AFGCFD00g@mail.gmail.com>
Message-ID: <CAJF2gTRu4cSPd09mXkUOxnL2HO0wnAzqeVr3a3He0AFGCFD00g@mail.gmail.com>
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_063713_084149_3B2959CA 
X-CRM114-Status: GOOD (  18.39  )
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
Cc: "julien.thierry@arm.com" <julien.thierry@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, Will Deacon <will.deacon@arm.com>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 Atish Patra <Atish.Patra@wdc.com>,
 "julien.grall@arm.com" <julien.grall@arm.com>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Will Deacon <will@kernel.org>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Christoph Hellwig <hch@infradead.org>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "james.morse@arm.com" <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On Tue, Sep 17, 2019 at 11:42 AM Anup Patel <Anup.Patel@wdc.com> wrote:

> >
> > With a reply stating that the patch "absolutely does not work" ;)
>
> This patch was tested on existing HW (which does not have ASID implementation)
> and tested on QEMU (which has very simplistic Implementation of ASID).
>
> When I asked Gary Guo about way to get access to their HW (in same patch
> email thread), I did not get any reply. After so many months passed, I now
> doubt the his comment "absolutely does not work".
> >
> > What exactly do you want people to do with that? It's an awful lot of effort to
> > review this sort of stuff and given that Guo Ren is talking about sharing page
> > tables between the CPU and an accelerator, maybe you're better off
> > stabilising Linux for the platforms that you can actually test rather than
> > getting so far ahead of yourselves that you end up with a bunch of wasted
> > work on patches that probably won't get merged any time soon.
>
> The intention of the ASID patch was to encourage RISC-V implementations
> having ASID in HW and also ensure that things don't break on existing HW.
>
> I don't see our efforts being wasted in trying to make Linux RISC-V feature
> complete and encouraging more feature rich RISC-V CPUs.
>
> Delays in merging patches are fine as long as people have something to try
> on their RISC-V CPU implementations.
>
I'm the supporter of that patch:
http://archive.lwn.net:8080/linux-kernel/20190329045111.14040-1-anup.patel@wdc.com/T/#u

Because it implicit hw broadcast tlb invalidation optimization.

Honestly it's not suitable for remote tlb flush with software IPI, but
it's still much better than current RISC-V's.

I'll try it on our hardware: 910. wait a moment :)

-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
