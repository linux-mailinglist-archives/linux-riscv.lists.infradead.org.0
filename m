Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC5F8757
	for <lists+linux-riscv@lfdr.de>; Tue, 12 Nov 2019 05:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3bTtLZwpaAaNq3ph+fD9JlgFVlmSFeBjiBpla0QwcM=; b=NctIaku0yZopGk
	tIv8g5DzQdR3aHM+NzCa4VaJz6nfp9BJny1PxHSDo1sf1MeYKT6pltGeUEO3AiO7PFIqtt2wQHuRK
	5d5anAYI1M1yAD8v0oYbV65FYmCJjb7aGEjBTbFFQMHipk1411MWj10fpBJRIyiRUnyH2FlaYBoOw
	UkE7W5V+p6WzZ3/miqs9nsl9DB1x14pUYrixt+yI4MjtuKqRyUjS5ah651wfGCry3bDwt4GKrlJVo
	AVevRY7jzhp+xp7XK2i49FLw5U3v8FpAr0OsOB07uHT852eIqfBp9JrhLxkYlUpNxvmg4eJ5Wcv3o
	f9dzr0SVafsZPbbKmKdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUNek-0001I9-9a; Tue, 12 Nov 2019 04:19:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUNeh-0001Ho-1F
 for linux-riscv@lists.infradead.org; Tue, 12 Nov 2019 04:19:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so1444682wmk.3
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 20:19:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F92ESdQX6UoJ61XjdWNouamb4m5JYUWzj/93fvLdDW8=;
 b=OmfMPkcUsU4z4Sge8bbBGEf7SLKlM3zhGCh0zWkASXg12E0B76dN5oZOy50OqSen1L
 1qJ58buJa6TvWFnwHI6+I4W2b/5sa2njMM/hRsRF2CzNeTvxKHHc5XODZGkOkAZNQdb+
 kmQUKgqavl1owTAsagWk5aktCyU5/kKKFMAYIECRxHFV4QYPrknpv+bLeBERhlefqQix
 zC4Ll2iHktkfcr4x9fNo18SgWbImwnGqLDv+YuvYnE+ZIUC/rbth6mhX7cL1De1ihAwf
 uwO/R75QZaq4bpRhJ1WbV1KqRcesyyM1jw7m3UJ6e35HL63OYmtydAILVbAjDmHpTosG
 YVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F92ESdQX6UoJ61XjdWNouamb4m5JYUWzj/93fvLdDW8=;
 b=Cx8FeUSkm6RHve/mvmg2I9uSwgq9vK+rfiNAkPH8KeVUP5DqcheFdk9kNdKKQnKUeR
 6yYsYHFE2AqdmP5JYNphW7/KEUgDMwdoVix3RM0rnqHuTDOneoXYuGfH/FDfTqEr7kJb
 PNj7MN056H1LMPalFzitmNCOIw6C1vs2Tjb+i6RjHexZ8TkH17b6Lp5pxOW58gRztQVQ
 GrZJJZdurR8EeJMYrgX/TNy0e7b4ZQV+5KT6I/WSg+bbdHKGJ3rEQTmF76Ev0KXy/BNf
 LYT0qNjjB3te9vsGY6S529MdpLZjSqLWHm5Lcf6WJ/QIhYqWyb2KCvmnQYVuLKmnTpni
 /qWg==
X-Gm-Message-State: APjAAAUmMbTffCPCCqyO094/it8OESh4kU3PprStQz798YuRU0Jzzu84
 5A9x3Gw1N86Az5/SWGsv7I7IgOyOKbIV9qEieHe6yw==
X-Google-Smtp-Source: APXvYqxfmg4gwVVmXOge9gfCiEkbE8Xe6rCqSJCbDSL9MSZe/0J4HCGkyOMrCS/FGlQu5ML00TxzFQzsi3f5hz3ZMUw=
X-Received: by 2002:a1c:9a4f:: with SMTP id c76mr1912349wme.103.1573532389104; 
 Mon, 11 Nov 2019 20:19:49 -0800 (PST)
MIME-Version: 1.0
References: <20191111133421.14390-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.999.1911111705350.30304@utopia.booyaka.com>
In-Reply-To: <alpine.DEB.2.21.999.1911111705350.30304@utopia.booyaka.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 12 Nov 2019 09:49:38 +0530
Message-ID: <CAAhSdy28n=XkhcZC2=7L8YZyxa5yJ+CUso_s7kK5FacUQM6tMA@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Enable SYSCON reboot and poweroff drivers
To: Paul Walmsley <paul@pwsan.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_201951_073291_38A72897 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 10:36 PM Paul Walmsley <paul@pwsan.com> wrote:
>
> On Mon, 11 Nov 2019, Anup Patel wrote:
>
> > We can use SYSCON reboot and poweroff drivers for the
> > SiFive test device found on QEMU virt machine and SiFive
> > SOCs.
> >
> > This patch enables SYSCON reboot and poweroff drivers
> > in RV64 and RV32 defconfigs.
> >
> > Signed-off-by: Anup Patel <anup.patel@wdc.com>
>
> I'd much prefer Christoph's driver, once it's fixed up per my earlier
> comments.  This business with writing random registers based on what's in
> the DT data has always been a bad idea.

Like mentioned in other email thread, we are not writing random
date to registers. In fact, we are describing Reboot and Poweroff
mechanism in DT using SYSCON Reboot and Poweroff DT nodes.

This is not a new approach. It has been used by a variety of SOCs
in past.

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
