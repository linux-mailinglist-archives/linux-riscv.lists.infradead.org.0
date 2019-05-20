Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6B022F26
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 10:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQPbn0uiRgy3mSNVpW6gwqxm+FesbsCONJVmO/FDgq4=; b=sz/fsybZr/LxGQ
	IDlv2KL+LUHDhqW6jpdT4PHyqb3ancsTrVfd4YwxQlHImwnn3qcvnnlLzik640Bl+Y+bJFUr7NAqQ
	6+HLt24SAtD0wzrOa4uHFNe7IoomrFuXpGmo96tCAtsGCE/4aykkTrgs4yD3XV/QA7nxnBFzJlelG
	m4PJHmok2UxQNVko+FvgHc9tUvwXxz5OHaIg5FFG4t0PRy3NPSJ0tJtZa6IGtk2jUtk5K9ch/x8A4
	g8C2t9JBvwuXSjhErWH2+KerGJdswH+wHieNN+RLrtVYc+sbz+LT36lyhiVUnwI6WEzffVuJnnc0C
	OC/czuCuK/dJfg89nDjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSduz-0000nm-Fo; Mon, 20 May 2019 08:45:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSduv-0000FO-E0
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 08:45:10 +0000
Received: by mail-wm1-x344.google.com with SMTP id 198so12333087wme.3
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 01:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brainfault-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fm9ij16sdpD8iaSclUBxPmiCBICgn7uQ/6l6aDbLE7U=;
 b=Wcdu8OQJzMjiiXg3qHrtp1i7mlTWP5r5NSt5tnnFBrs+IHpyYY4dSKG5aZ4xSgFttO
 PdBkfMt1sUS+zn8zVhYiC/5wYPoxSDHLL1wRmDP8EGfesv5rRhg88YD4CwGAdBHRHx9q
 Z2n+wAu9/LLZf20saY/0VPKHWc31kOV7Nm/utQ3F+yG1wSbd1Frs7mi3z/rV1vqehYEg
 EQirCb0ad9Dm1iJJK4MTp7mSSUcnHVT66Hl9+ig5Qmgt7tCepfNAiJEz/t4UhRgECTLW
 +/IK7NDp8pgK6RfQgvApqvMibOdJpxeYo9EGlip2UxdcwayONNBrVbhUdlBWV4RqExGO
 oJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fm9ij16sdpD8iaSclUBxPmiCBICgn7uQ/6l6aDbLE7U=;
 b=aKtRK+s6Z5zTsLGoCXL91ms9hqvOf9xEL6nGAvV5ZKcsraTGXSxKtL6jC0gAnCc8Zw
 QNTN1RC3dLPoVod7nSD6Cc+ljm8pnGsGLCADC4RtIV7dr2mNE2xvMT1jlXMe80rpMwdz
 rSMfwY3kW7Mc0EM1FdZT1juVqVrr1M4EDYomOnSw/Fr4vJrxpvrp4vT3M9qV/9tjavEI
 7TbPRW9AgxmNfHkRsae7WzvPFm6WRU0uNvdPkDmtzw8owO+hcj9o67Mf0v58ZqeFKPan
 hNNMncLQnpDLaNegjZrqi1oBolqq9SiYUwDMMmEEZ5GJA1ZHDOVi2kOQeE3GYrXKD9sc
 Wv3w==
X-Gm-Message-State: APjAAAW5MQggE8qgAdCju7LHrJNQ5zH1/4zMKtro5v4kTt15H/aEjFEa
 Km6g3XPzby+0VRtkTcl1JmQEz/asgkOJWWp3w+sGtw==
X-Google-Smtp-Source: APXvYqy+gaylWYdcZd/BRi5OQNcoo8rzluGD3AdwGg+/XH6ty9nSlun0RpAThRvzg8tL3zLJ4Sc+NdQJ875c4Ho2sos=
X-Received: by 2002:a1c:eb0c:: with SMTP id j12mr4257302wmh.55.1558341907386; 
 Mon, 20 May 2019 01:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190502050206.23373-1-anup.patel@wdc.com>
In-Reply-To: <20190502050206.23373-1-anup.patel@wdc.com>
From: Anup Patel <anup@brainfault.org>
Date: Mon, 20 May 2019 14:14:56 +0530
Message-ID: <CAAhSdy0nZVHRNBSyVOiy99_f7qLTO6jzucCnhautHGgNq42JXw@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] Two-stagged initial page table setup
To: Anup Patel <Anup.Patel@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_014509_478462_358EE8DB 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 10:32 AM Anup Patel <Anup.Patel@wdc.com> wrote:
>
> This patchset implements two-stagged initial page table setup using fixmap
> to avoid mapping non-existent RAM and also reduce high_memory consumed by
> initial page tables.
>
> The patchset is based on Linux-5.1-rc7 and tested on SiFive Unleashed board
> and QEMU virt machine.
>
> These patches can be found in riscv_setup_vm_v4 branch of
> https//github.com/avpatel/linux.git
>
> Changes since v3:
> - Changed patch series subject.
> - Dropped PATCH1 because it's already merged
> - Dropped PATCH3 because trampoline page table handles a corner case
>   for 32bit systems where load address range overlaps kernel virtual
>   address range
> - Revamped PATCH for 4K aligned booting into two-stagged initial page
>   table setup
>
> Changes since v2:
> - Dropped PATCH2 because we have separate fix for Linux-5.1-rcX
> - Moved PATCH5 to PATCH2
> - Moved PATCH4 to PATCH3
> - The "Booting kernel from any 4KB aligned address" is now PATCH4
>
> Changes since v1:
> - Add kconfig option BOOT_PAGE_ALIGNED to enable 4KB aligned booting
> - Improved initial page table setup code to select best/biggest
>   possible mapping size based on load address alignment
> - Added PATCH4 to remove redundant trampoline page table
> - Added PATCH5 to fix memory reservation in setup_bootmem()
>
> Anup Patel (2):
>   RISC-V: Fix memory reservation in setup_bootmem()
>   RISC-V: Setup initial page tables in two stages
>
>  arch/riscv/include/asm/fixmap.h     |   5 +
>  arch/riscv/include/asm/pgtable-64.h |   5 +
>  arch/riscv/include/asm/pgtable.h    |   7 +
>  arch/riscv/kernel/head.S            |  17 +-
>  arch/riscv/kernel/setup.c           |   4 +-
>  arch/riscv/mm/init.c                | 327 ++++++++++++++++++++++------
>  6 files changed, 289 insertions(+), 76 deletions(-)
>
> --
> 2.17.1

Hi All,

Any comments on this patchset?

Regards,
Anup

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
