Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B817B16F8D5
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Feb 2020 08:58:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNXpCYQvHjZsKJXxbkSXUAsYb8BMZk96nwm0G7NqdhU=; b=MJjVb9vJo+0jKs
	Vy9DvOw25gG4fh6GKdEahUWAcF+uWIn2dlKJnf+x35TCiK6ECluWyIk3q8zFDHSEHIG9tC14JybpS
	CkcJglD/2Rc9XACVY/eVso+GmDIv0Fl9I8SAsPA3tlqAk7TrsIRzLDd/fnSfZPgDTWQZ16VDSDe9G
	BbcnXpndif7cYBKKxUFuJk1rFklF9sAR3cqvzxUYBA8c95OhmMt1PZx5a3eUHGN7itsbKjkAHY7A8
	gN2htUD6uO4n2dyD9PqAedSJ1qRWUKSu0ohqqZpBSkdDiNapuXoBLztvtU/xpirOOZvHFnv667BtS
	spsS38Ud2qh5aBhF58bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rZw-0004Az-VB; Wed, 26 Feb 2020 07:58:00 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rZu-0004Ar-QX
 for linux-riscv@bombadil.infradead.org; Wed, 26 Feb 2020 07:57:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=dNXpCYQvHjZsKJXxbkSXUAsYb8BMZk96nwm0G7NqdhU=; b=ItxQBub5O0qbFWgFtzDANm8uda
 qRmyEJVJwUctlURKgPGR6p4fcTm56BrkIwTDMmNuyXpHrOTgS+4M1wz451xbBScLJGkpcEpOgk7Sb
 9hQzYrdPZxTOi/7BBy2Dhe/ipr/kPKlRGSGfxgAeUG0S7GPVpqyxBwb63qkvRWz3jDQPSV4kCwnlz
 cScgkSBDkZFdI0Efy2y1RBF5vQukOiiiW0M20EjYTg5vxLfX8FDwqMixBH5OX8AOCltMsDBOkKgRU
 4sIzJdmCMUB9QA9mybGCsX4jcmieMmQ2bzzp4fnVj8PZQFe+VGXmhJ2wHR6/alXygp0i5MgqX7upS
 OxqsZmrA==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rZr-000775-PH
 for linux-riscv@lists.infradead.org; Wed, 26 Feb 2020 07:57:56 +0000
Received: from [10.30.1.20] (lneuilly-657-1-5-103.w81-250.abo.wanadoo.fr
 [81.250.144.103]) (Authenticated sender: alex@ghiti.fr)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 65F62200002;
 Wed, 26 Feb 2020 07:56:54 +0000 (UTC)
Subject: Re: [GIT PULL] RISC-V Fixes for 5.6-rc4
To: Palmer Dabbelt <palmerdabbelt@google.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <mhng-464e74b9-125c-42e3-9384-60c871d22cfd@palmerdabbelt-glaptop1>
From: Alexandre Ghiti <alex@ghiti.fr>
Message-ID: <5226d756-e348-29d1-258d-0ab4b63c0677@ghiti.fr>
Date: Wed, 26 Feb 2020 08:56:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <mhng-464e74b9-125c-42e3-9384-60c871d22cfd@palmerdabbelt-glaptop1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Palmer,

On 2/25/20 6:37 PM, Palmer Dabbelt wrote:
> The following changes since commit 11a48a5a18c63fd7621bb050228cebf13566e4d8:
> 
>    Linux 5.6-rc2 (2020-02-16 13:16:59 -0800)
> 
> are available in the Git repository at:
> 
>    git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git tags/riscv-for-linux-5.6-rc4
> 
> for you to fetch changes up to 8458ca147c204e7db124e8baa8fede219006e80d:
> 
>    riscv: adjust the indent (2020-02-24 13:12:53 -0800)
> 
> ----------------------------------------------------------------
> RISC-V Fixes for 5.6-rc4
> 
> This tag contains a handful of RISC-V related fixes that I've collected and
> would like to target for 5.6-rc4:
> 
> * A fix to set up the PMPs on boot, which allows the kernel to access memory on
>    systems that don't set up permissive PMPs before getting to Linux.  This only
>    effects machine-mode kernels, which currently means only NOMMU kernels.
> * A fix to avoid enabling supervisor-mode interrupts when running in
>    machine-mode, also only for NOMMU kernels.
> * A pair of fixes to our KASAN support to avoid corrupting memory.
> * A gitignore fix.
> 
> This boots on QEMU's virt board for me.
> 
> ----------------------------------------------------------------
> Anup Patel (1):
>        RISC-V: Don't enable all interrupts in trap_init()
> 
> Damien Le Moal (1):
>        riscv: Fix gitignore
> 
> Greentime Hu (1):
>        riscv: set pmp configuration if kernel is running in M-mode
> 
> Zong Li (2):
>        riscv: allocate a complete page size for each page table
>        riscv: adjust the indent
> 
>   arch/riscv/boot/.gitignore   |  2 ++
>   arch/riscv/include/asm/csr.h | 12 ++++++++++
>   arch/riscv/kernel/head.S     |  6 +++++
>   arch/riscv/kernel/traps.c    |  4 ++--
>   arch/riscv/mm/kasan_init.c   | 53 ++++++++++++++++++++++++++------------------
>   5 files changed, 53 insertions(+), 24 deletions(-)
> 

What about this patch https://patchwork.kernel.org/patch/11395273/ from 
Vincent that fixes module loading problems described here:

https://lore.kernel.org/linux-riscv/d868acf5-7242-93dc-0051-f97e64dc4387@ghiti.fr/T/

Do you consider it for 5.6 ?

Thanks,

Alex

