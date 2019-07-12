Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F301671B3
	for <lists+linux-riscv@lfdr.de>; Fri, 12 Jul 2019 16:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x93Xxy5PqPhk0KsBmQLGBMehe5zbB6kWhrtCF+JZa8k=; b=PtR4FVx0dqQAcL
	02lKhWNnUaPUCgAJsDFVY618ChmKZk+imVHzZ8Y+Am0JLn5R6IFMUGNFyyn1DnafmijVlf+5trFKY
	WCCD6fnIFOKPz0V/aKXvKavuBM8LsXQxLpAKfUkhd1ahj8SgweGJqqoYOkqQrEv0FsdvodW0eUWRx
	jlthNQKNHdSNWlLO9zyNxm/HxeTRLW3P0V6/7gZvYdIKbeMhcIAM38YiwlrYe5rt9Vd7rX4rNziOC
	eCZNbN2fTlMRi3YbaNqfWCJz/LncKwTQPxTc2lT8H+SipSro1Vu5S8E6FGZy5ifYX4GTQjOf4Y2g6
	6/t/HekRl8sx8jzcQ98g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlwuX-0006gg-E0; Fri, 12 Jul 2019 14:52:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlwuT-0006fW-78
 for linux-riscv@lists.infradead.org; Fri, 12 Jul 2019 14:52:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 321FD2B;
 Fri, 12 Jul 2019 07:52:24 -0700 (PDT)
Received: from [10.1.34.155] (e110723.arm.com [10.1.34.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 306493F59C;
 Fri, 12 Jul 2019 07:52:23 -0700 (PDT)
Subject: Re: [PATCH 17/17] riscv: add nommu support
To: Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
References: <20190624054311.30256-1-hch@lst.de>
 <20190624054311.30256-18-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <7b382b7a-41b6-62a5-02ab-189b3da9df70@arm.com>
Date: Fri, 12 Jul 2019 15:52:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190624054311.30256-18-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_075229_476959_F49A2C7B 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-mm@kvack.org, Damien Le Moal <damien.lemoal@wdc.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Christoph,

On 6/24/19 6:43 AM, Christoph Hellwig wrote:
> The kernel runs in M-mode without using page tables, and thus can't run
> bare metal without help from additional firmware.
> 
> Most of the patch is just stubbing out code not needed without page
> tables, but there is an interesting detail in the signals implementation:
> 
>  - The normal RISC-V syscall ABI only implements rt_sigreturn as VDSO
>    entry point, but the ELF VDSO is not supported for nommu Linux.
>    We instead copy the code to call the syscall onto the stack.
> 
> In addition to enabling the nommu code a new defconfig for a small
> kernel image that can run in nommu mode on qemu is also provided, to run
> a kernel in qemu you can use the following command line:
> 
> qemu-system-riscv64 -smp 2 -m 64 -machine virt -nographic \
> 	-kernel arch/riscv/boot/loader \
> 	-drive file=rootfs.ext2,format=raw,id=hd0 \
> 	-device virtio-blk-device,drive=hd0
> 
> Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/riscv/Kconfig                      | 24 +++++---
>  arch/riscv/configs/nommu_virt_defconfig | 78 +++++++++++++++++++++++++
>  arch/riscv/include/asm/elf.h            |  4 +-
>  arch/riscv/include/asm/futex.h          |  6 ++
>  arch/riscv/include/asm/io.h             |  4 ++
>  arch/riscv/include/asm/mmu.h            |  3 +
>  arch/riscv/include/asm/page.h           | 12 +++-
>  arch/riscv/include/asm/pgalloc.h        |  2 +
>  arch/riscv/include/asm/pgtable.h        | 38 ++++++++----
>  arch/riscv/include/asm/tlbflush.h       |  7 ++-
>  arch/riscv/include/asm/uaccess.h        |  4 ++
>  arch/riscv/kernel/Makefile              |  3 +-
>  arch/riscv/kernel/entry.S               | 11 ++++
>  arch/riscv/kernel/head.S                |  6 ++
>  arch/riscv/kernel/signal.c              | 17 +++++-
>  arch/riscv/lib/Makefile                 |  8 +--
>  arch/riscv/mm/Makefile                  |  3 +-
>  arch/riscv/mm/cacheflush.c              |  2 +
>  arch/riscv/mm/context.c                 |  2 +
>  arch/riscv/mm/init.c                    |  2 +
>  20 files changed, 200 insertions(+), 36 deletions(-)
>  create mode 100644 arch/riscv/configs/nommu_virt_defconfig
> 

snip...

>  
> diff --git a/arch/riscv/configs/nommu_virt_defconfig b/arch/riscv/configs/nommu_virt_defconfig
> new file mode 100644
> index 000000000000..cf74e179bf90
> --- /dev/null
> +++ b/arch/riscv/configs/nommu_virt_defconfig
> @@ -0,0 +1,78 @@
> +# CONFIG_CPU_ISOLATION is not set
> +CONFIG_LOG_BUF_SHIFT=16
> +CONFIG_PRINTK_SAFE_LOG_BUF_SHIFT=12
> +CONFIG_BLK_DEV_INITRD=y
> +# CONFIG_RD_BZIP2 is not set
> +# CONFIG_RD_LZMA is not set
> +# CONFIG_RD_XZ is not set
> +# CONFIG_RD_LZO is not set
> +# CONFIG_RD_LZ4 is not set
> +CONFIG_CC_OPTIMIZE_FOR_SIZE=y
> +CONFIG_EXPERT=y
> +# CONFIG_SYSFS_SYSCALL is not set
> +# CONFIG_FHANDLE is not set
> +# CONFIG_BASE_FULL is not set
> +# CONFIG_EPOLL is not set
> +# CONFIG_SIGNALFD is not set
> +# CONFIG_TIMERFD is not set
> +# CONFIG_EVENTFD is not set
> +# CONFIG_AIO is not set
> +# CONFIG_IO_URING is not set
> +# CONFIG_ADVISE_SYSCALLS is not set
> +# CONFIG_MEMBARRIER is not set
> +# CONFIG_KALLSYMS is not set
> +# CONFIG_VM_EVENT_COUNTERS is not set
> +# CONFIG_COMPAT_BRK is not set
> +CONFIG_SLOB=y
> +# CONFIG_SLAB_MERGE_DEFAULT is not set
> +# CONFIG_MMU is not set
> +CONFIG_MAXPHYSMEM_2GB=y
> +CONFIG_SMP=y
> +CONFIG_CMDLINE="root=/dev/vda rw earlycon=uart8250,mmio,0x10000000,115200n8 console=ttyS0"
> +CONFIG_CMDLINE_FORCE=y
> +# CONFIG_BLK_DEV_BSG is not set
> +CONFIG_PARTITION_ADVANCED=y
> +# CONFIG_MSDOS_PARTITION is not set
> +# CONFIG_EFI_PARTITION is not set
> +# CONFIG_MQ_IOSCHED_DEADLINE is not set
> +# CONFIG_MQ_IOSCHED_KYBER is not set
> +CONFIG_BINFMT_FLAT=y

IIUC, RISC-V requires stack pointer to be 16 byte aligned, but flat loader would
align stack pointer to max(sizeof(void *), ARCH_SLAB_MINALIGN). So, I think you
might want to define ARCH_SLAB_MINALIGN.

Cheers
Vladimir

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
